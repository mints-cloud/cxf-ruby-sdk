# frozen_string_literal: true

require_relative './client'
require_relative './cxf/helpers/cxf_helper'
require_relative './cxf/helpers/threads_helper'
require_relative './user/customer-data/customer_data'
require_relative './user/content/content'
require_relative './user/marketing/marketing'
require_relative './user/ecommerce/ecommerce'
require_relative './user/config/config'
require_relative './user/profile/profile'
require_relative './user/helpers/helpers'

module Cxf
  ##
  # == User context API
  # User class contains functions that needs an API key and a session token as authentication
  # == Usage example
  # Initialize
  #     client = Cxf::User.new(cxf_url, api_key)
  # Call any function
  #     client.get_contacts
  # == Single resource options
  # * +include+ - [String] include a relationship
  # * +attributes+ - [Boolean] attach attributes to response
  # * +tags+ - [Boolean] attach tags to response
  # * +taxonomies+ - [Boolean] attach categories to response
  # == Resource collections options
  # * +search+ - [String] filter by a search word
  # * +scopes+ - [String] filter by a scope
  # * +filters+ - [String] filter by where clauses
  # * +jfilters+ - [String] filter using complex condition objects (this filter use mongo queries)
  # * +afilters+ - [String] filter using complex condition objects (this filter use postgresql queries)
  # * +rfilters+ - [String] filter using complex condition objects from relationships
  # * +dfilters+ - [String] filter using conditions based on dates
  # * +fields+ - [String] indicates the columns that will be selected
  # * +sort+ - [String] indicates the columns that will be selected

  class User
    include CustomerData
    include Content
    include Marketing
    include Ecommerce
    include Config
    include Profile
    include Helpers
    include Contacts
    include CxfHelper
    include ThreadsHelper

    attr_reader :client

    def initialize(host, api_key, session_token = nil, refresh_token = nil, debug = false, user_agent = nil, timeouts = {})
      @client = Cxf::Client.new(
        host,
        api_key,
        'user',
        session_token,
        refresh_token,
        nil,
        nil,
        debug,
        timeouts,
      )

      @client.user_agent = user_agent
    end

    def login(email, password)
      data = { email: email, password: password }
      response = @client.raw('post', '/users/login', nil, data.to_json, '/api/v1', { no_content_type: true })

      return response unless response.is_a? Hash
      if response.key? 'data' and response['data'].key? 'access_token'
        @client.session_token = response['data']['access_token']
        @client.refresh_token = response['data']['refresh_token']
      end
      response
    end

    def magic_link_login(token)
      @client.raw('get', "/users/magic-link-login/#{token}", nil, nil, '/api/v1')
    end

    ##
    # === Send magic link to user
    def send_magic_link(email, redirect_url = '', life_time = 24)
      data = {
        email: email,
        redirectUrl: redirect_url,
        lifeTime: life_time
      }
      @client.raw('post', '/users/magic-link', nil, { data: data }, '/api/v1')
    end

    def get_client
      @client
    end
  end
end
