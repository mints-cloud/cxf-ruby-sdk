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
      session_token = response['data']['session_token']
      refresh_token = response['data']['refresh_token']
      id_token = response['data']['contact_token'] || response['data']['id_token'] || nil
    end
    # Set a permanent cookie with the session token
    cookies.permanent["Access-Token"] = { value: session_token, secure: true, httponly: true }
    cookies.permanent["Refresh-Token"] = { value: refresh_token, secure: true, httponly: true }
    # cookies.permanent[:cxf_contact_id] = { value: id_token, secure: true, httponly: true }
    @contact_token = id_token
  end

  ##
  # === Cxf contact Login.
  # Starts a contact session in cxf.cloud and set a session cookie
  def cxf_contact_magic_link_login(hash, redirect_in_error = false)
    # Login in cxf
    response = @cxf_contact.magic_link_login(hash)

    if response['data']
      # Get session token from response
      session_token = response['data']['session_token']
      refresh_token = response['data']['refresh_token']
      # id_token = response['data']['contact']['contact_token'] ? response['data']['contact']['contact_token'] : response['data']['contact']['id_token']
      # Set a permanent cookie with the session token
      cookies.permanent["Access-Token"] = { value: session_token, secure: true, httponly: true }
      cookies.permanent["Refresh-Token"] = { value: refresh_token, secure: true, httponly: true }
      # cookies.permanent[:cxf_contact_id] = { value: id_token, secure: true, httponly: true }
      # @contact_token = id_token
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
    cookies.delete("Access-Token")
    cookies.delete("Refresh-Token")
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
      cookies.delete("Access-Token")
      cookies.delete("Refresh-Token")
      status = false
    end

    status
  end

  def update_contact_tokens
    access_token = @cxf_user.get_client.session_token
    refresh_token = @cxf_user.get_client.refresh_token
    # access_token_expires_at = @cxf_user.get_client.session_token_expires_at
    # refresh_token_expires_at = @cxf_user.get_client.refresh_token_expires_at

    cookies["Access-Token"] = { value: access_token, secure: true, httponly: true} if access_token
    cookies["Refresh-Token"] = { value: refresh_token, secure: true, httponly: true } if refresh_token
  end
end