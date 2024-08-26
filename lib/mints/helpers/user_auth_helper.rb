# frozen_string_literal: true

module UserAuthHelper
  def mints_user_signed_in?
    begin
      # Check status in mints
      response = @mints_user.me['data']
    rescue => e
      # Handle the client Unauthorized error
      # if mints response is negative delete the session cookie
      cookies.delete(:mints_user_session_token)
      cookies.delete(:mints_user_refresh_token)
      response = nil
    end

    response
  end

  ##
  # === Mints user Login.
  # Starts a user session in mints.cloud and set a session cookie
  def mints_user_login(email, password)
    # Login in mints
    response = @mints_user.login(email, password)
    # Get session token from response
    if response.key? 'data'
      session_token = response['data']['access_token']
      refresh_token = response['data']['refresh_token']
      session_token_expires_at = Time.parse(response['data']['access_token_expires_at'])
      refresh_token_expires_at = Time.parse(response['data']['refresh_token_expires_at'])
    end

    # Set a permanent cookie with the session token
    cookies[:mints_user_session_token] = { value: session_token, secure: true, httponly: true, expires: Time.at(session_token_expires_at) }
    cookies[:mints_user_refresh_token] = { value: refresh_token, secure: true, httponly: true, expires: Time.at(refresh_token_expires_at) }
  end

  ##
  # === Mints user Login.
  # Starts a user session in mints.cloud and set a session cookie
  def mints_user_magic_link_login(hash)
    # Login in mints
    response = @mints_user.magic_link_login(hash)
    if response['data']
      # Set a cookie with the session token
      cookies[:mints_user_session_token] = { value: response['data']['access_token'], secure: true, httponly: true }
      cookies[:mints_user_refresh_token] = { value: response['data']['refresh_token'], secure: true, httponly: true }
      redirect_to response['data']['redirect_url'] || '/'
    else
      redirect_to '/'
    end
  end

  ##
  # === Mints user Logout.
  # Destroy session from mints.cloud and delete local session cookie
  def mints_user_logout
    # Logout from mints
    # @mints_user.logout
    # Delete local cookie
    cookies.delete(:mints_user_session_token)
    cookies.delete(:mints_user_refresh_token)
  end

  def update_user_tokens
    access_token = @mints_user.get_client.session_token
    refresh_token = @mints_user.get_client.refresh_token
    access_token_expires_at = @mints_user.get_client.session_token_expires_at
    refresh_token_expires_at = @mints_user.get_client.refresh_token_expires_at

    cookies[:mints_user_session_token] = { value: access_token, secure: true, httponly: true, expires: Time.at(access_token_expires_at) } if access_token && access_token_expires_at
    cookies[:mints_user_refresh_token] = { value: refresh_token, secure: true, httponly: true, expires: Time.at(refresh_token_expires_at) } if refresh_token && refresh_token_expires_at
  end
end
