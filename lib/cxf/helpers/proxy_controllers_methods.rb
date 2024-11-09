# frozen_string_literal: true

require 'redis'
require 'reverse_proxy/controller'
require 'reverse_proxy/client'

module ProxyControllersMethods
  include ActionController::Cookies
  include ReverseProxy::Controller

  # === Index
  # Is the base index method for all controllers, manage the headers depending
  # on the controller type (Contact or User)
  #
  # ==== Parameters
  # controller_type:: (String) -- Controller type that be called, this manages the headers to send (contact, user, pub).
  # ==== Return
  # Returns the response returned by send_cxf_request
  #
  def index(controller_type = nil)
    host = @host.gsub('http://', '').gsub('https://', '')
    host = host[0...-1] if host.end_with? '/'

    headers = {
      'host' => host,
      'ApiKey' => @api_key.to_s,
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }

    if %w[contact user].include? controller_type
      session_token = cookies["Access-Token"]
      refresh_token = cookies["Refresh-Token"]
      headers['Access-Token'] = session_token
      headers['Refresh-Token'] = refresh_token
    end

    headers['ContactToken'] = cookies[:cxf_contact_id] if controller_type == 'contact' && cookies[:cxf_contact_id]

    full_url = request.original_url
    url_need_cache, time = url_need_cache?(full_url)

    if @debug
      puts "URL: #{full_url}"
      puts "URL need cache: #{url_need_cache}"
      puts "URL time cache: #{time}"
      puts "Headers: #{headers}"
    end

    if url_need_cache
      cached_response = @redis_server.get(full_url)

      if cached_response
        puts 'RESPONSE FROM CACHE' if @debug
        return render json: cached_response
      end

      send_cxf_request(full_url, headers, controller_type, true, time: time)
    else
      send_cxf_request(full_url, headers, controller_type)
    end
  end

  # === Url need cache?
  # Method used to check if the given URL should be cached and for how long
  #
  # ==== Parameters
  # full_url:: (String) -- URL to check if has cache.
  # ==== Return
  # Returns if the URL has cache and the time to be cached

  def url_need_cache?(full_url)
    url_need_cache = false
    time = 0
    methods_with_cache = %w[GET]

    if methods_with_cache.include? request.method && @use_cache
      @redis_config['groups'].each do |group|
        group['urls'].each do |url|

          if full_url.match url
            time = group['time']
            url_need_cache = true
            break
          end

        end

        break if url_need_cache
      end
    end

    [url_need_cache, time]
  end

  # === Send cxf request
  # Method used to make each request to Cxf, in addition to verifying and saving
  # the response in cache for cases where it requires cache
  #
  # ==== Parameters
  # full_url:: (String) -- URL to make the request.
  # headers::  (Hash|Object) -- Headers to send in the request.
  # cache_result:: (Boolean) -- This parameter controls whether the response will be cached..
  # time:: (Integer) -- It is the time that the response will be stored in cache.
  # ==== Return
  # Returns the response given by Cxf or Redis

  def send_cxf_request(full_url, headers, controller_type, cache_result = false, time: 30)
    puts 'RESPONSE FROM MINTS.CLOUD' if @debug

    reverse_proxy @host, headers: headers, verify_ssl: false do |config|

      if cache_result
        # Request succeeded!
        config.on_response do |_status_code, response|
          @redis_server.setex(
            full_url,
            time || 30,
            response.body
          )
        end
      end

      # set Cookies from response headers
      if %w[contact user].include? controller_type
        config.on_response do |_status_code, response|
          session_token_expires_at = Time.parse(response.header['Access-Token-Expires-At']) if response.header['Access-Token-Expires-At']
          refresh_token_expires_at = Time.parse(response.header['Refresh-Token-Expires-At']) if response.header['Refresh-Token-Expires-At']

          # add expires to cookies
          cookies["Access-Token"] = { value: response.header['Access-Token'], secure: true, httponly: true, expires: Time.at(session_token_expires_at) } if response.header['Access-Token']
          cookies["Refresh-Token"] = { value: response.header['Refresh-Token'], secure: true, httponly: true, expires: Time.at(refresh_token_expires_at) } if response.header['Refresh-Token']
        end
      end

      # Request failed!
      config.on_missing do |status_code, _response|
        # We got a 404!
        raise ActionController::RoutingError.new('Not Found') if status_code == 404
      end
    end
  end
end