# frozen_string_literal: true

module UserAuthHelper
  def cxf_user_signed_in?
    begin
      # Check status in cxf
      response = @cxf_user.me['data']
    rescue => e
      # Handle the client Unauthorized error
      # if cxf response is negative delete the session cookie
      cookies.delete("cxf_user_session_token")
      cookies.delete("cxf_user_refresh_token")
      response = nil
    end

    response
  end

  ##
  # === Cxf user Login.
  # Starts a user session in cxf.cloud and set a session cookie
  def cxf_user_login(email, password)
    # Login in cxf
    response = @cxf_user.login(email, password)
    # Get session token from response
    return response unless response.is_a? Hash
    if response.key? 'data'
      session_token = response['data']['access_token']
      refresh_token = response['data']['refresh_token']
      # session_token_expires_at = Time.parse(response['data']['access_token_expires_at'])
      # refresh_token_expires_at = Time.parse(response['data']['refresh_token_expires_at'])
    end

    # Set a permanent cookie with the session token
    cookies["cxf_user_session_token"] = { value: session_token, secure: true, httponly: true }
    cookies["cxf_user_refresh_token"] = { value: refresh_token, secure: true, httponly: true}
  end

  ##
  # === Cxf user Login.
  # Starts a user session in cxf.cloud and set a session cookie
  def cxf_user_magic_link_login(hash)
    # Login in cxf
    response = @cxf_user.magic_link_login(hash)
    if response['data']
      # Set a cookie with the session token
      cookies["cxf_user_session_token"] = { value: response['data']['access_token'], secure: true, httponly: true }
      cookies["cxf_user_refresh_token"] = { value: response['data']['refresh_token'], secure: true, httponly: true }
      redirect_to response['data']['redirect_url'] || '/'
    else
      redirect_to '/'
    end
  end

  ##
  # === Cxf user Logout.
  # Destroy session from cxf.cloud and delete local session cookie
  def cxf_user_logout
    # Logout from cxf
    # @cxf_user.logout
    # Delete local cookie
    cookies.delete("cxf_user_session_token")
    cookies.delete("cxf_user_refresh_token")
  end

  def update_user_tokens
    access_token = @cxf_user.get_client.session_token
    refresh_token = @cxf_user.get_client.refresh_token

    cookies["cxf_user_session_token"] = { value: access_token, secure: true, httponly: true} if access_token
    cookies["cxf_user_refresh_token"] = { value: refresh_token, secure: true, httponly: true} if refresh_token
  end
end
