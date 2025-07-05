# frozen_string_literal: true

module ContactAuthHelper
  ##
  # === Cxf Contact Login.
  # Starts a contact session in cxf.cloud and set a session cookie
  def cxf_contact_login(email, password)
    # Login in cxf
    response = @cxf_contact.login(email, password)

    # Get session token from response
    return response unless response.is_a? Hash
    if response.key? 'data'
      id_token = response['data']['contact_token'] || response['data']['id_token'] || nil
    end

    @contact_token = id_token

    response
  end

  ##
  # === Cxf contact Login.
  # Starts a contact session in cxf.cloud and set a session cookie
  def cxf_contact_magic_link_login(hash, redirect_in_error = false)
    # Login in cxf
    response = @cxf_contact.magic_link_login(hash)

    if response['data']
      redirect_to response['data']['redirect_url'] || '/' if redirect_in_error
    else
      redirect_to '/' if redirect_in_error
    end
  end

  ##
  # === Cxf Contact Logout.
  # Destroy session from cxf.cloud and delete local session cookie
  def cxf_contact_logout
    # Logout from cxf
    @cxf_contact.logout
    # Delete session token and keep the contact token id
    # Never delete the cxf_contact_id cookie to avoid the creation of ghosts
    cookies.delete("cxf_contact_access_token")
    cookies.delete("cxf_contact_refresh_token")
    @contact_token = nil
  end

  def cxf_contact_signed_in?

    begin
      # Check status in cxf
      # Check status in cxf
      response = @cxf_contact.status
      status = response['success'] || false
    rescue => e
      # Handle the client Unauthorized error
      # if cxf response is negative delete the session cookie
      cookies.delete("cxf_contact_session_token")
      cookies.delete("cxf_contact_refresh_token")
      status = false
    end

    status
  end

  def sync_contact_cookies
    response_cookies = @cxf_contact.get_client.response_cookies

    response_cookies.each do |key, cookie|
      cookies[cookie['name']] = {
        value: cookie['value'],
        expires: cookie['expires'] ? Time.parse(cookie['expires']) : nil,
        path: cookie['path'] || '/',
        secure: cookie['secure'] || false,
        httponly: cookie['httponly'] || false,
        same_site: (cookie['samesite'] || 'Lax').downcase.to_sym
      }
    end
  end
end