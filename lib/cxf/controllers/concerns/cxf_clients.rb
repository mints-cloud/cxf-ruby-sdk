# frozen_string_literal: true

require_relative "./read_config_file"

module CxfClients
  extend ActiveSupport::Concern

  included do
    include ReadConfigFile
    before_action :set_cxf_clients
  end

  # Define the clients that will have
  # Override in the controller if you dont wanna all clients
  def define_cxf_clients
    %w[contact user pub service_account]
  end

  private

  ##
  # === Set cxf clients (pub, user and contact)
  # Initialize all clients from cxf
  def set_cxf_clients
    valid_clients = %w[contact user pub service_account]

    clients = define_cxf_clients&.select { |client| valid_clients.include? client } || []

    if @debug
      puts "Clients to initialize:", clients
      puts "Host:", @host
    end

    if clients.kind_of?(Array) and @host
      clients.each do |client|
        send("set_cxf_#{client}_client")
      end
    end
  end

  ##
  # === Set cxf pub.
  # Initialize the public client and set the contact token
  def set_cxf_pub_client
    # Initialize cxf pub client, credentials taken from cxf_config.yml.erb file
    visit_id = cookies[:cxf_visit_id]
    contact_token_id = cookies[:cxf_contact_id]
    user_agent = request.user_agent

    @cxf_pub = Cxf::Pub.new(
      @host,
      @api_key,
      contact_token_id,
      visit_id,
      @debug,
      user_agent
    )
  end

  ##
  # === Set cxf contact client.
  # Initialize the contact client and set the contact token
  def set_cxf_contact_client
    # Initialize cxf contact client
    contact_session_token = cookies[:cxf_contact_session_token]
    contact_refresh_token = cookies[:cxf_contact_refresh_token]
    contact_token_id = cookies[:cxf_contact_id]
    user_agent = request.user_agent
    @cxf_contact = Cxf::Contact.new(
      @host,
      @api_key,
      contact_session_token,
      contact_refresh_token,
      contact_token_id,
      @debug,
      user_agent
    )
  end

  ##
  # === Set Cxf user client.
  # Initialize the user client
  def set_cxf_user_client
    # Initialize cxf user client
    user_session_token = cookies[:cxf_user_session_token]
    user_refresh_token = cookies[:cxf_user_refresh_token]
    user_agent = request.user_agent
    @cxf_user = Cxf::User.new(
      @host,
      @api_key,
      user_session_token,
      user_refresh_token,
      @debug,
      user_agent
    )
  end

  ##
  # === Set Cxf service account
  # Initialize the service account client
  def set_cxf_service_account_client
    # Initialize service account client
    user_agent = request.user_agent
    @cxf_service_account = Cxf::User.new(
      @host,
      @api_key,
      @api_key,
      @api_key,
      @debug,
      user_agent
    )
  end
end
