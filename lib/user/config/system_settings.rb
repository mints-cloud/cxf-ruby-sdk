# frozen_string_literal: true

module SystemSettings
  ##
  # == System Settings
  #
  # === Get settings by keys.
  # Get a collection of settings using keys.
  #
  # ==== Example
  #     options = {
  #       setting_keys: 'email_transport_provider,email_template_provider,email_template_default_from_address'
  #     }
  #     @data = @cxf_user.get_settings_by_keys(options)
  def get_settings_by_keys(options)
    @client.raw('get', '/config/system-settings/by-keys', options)
  end

  # === Get settings.
  # Get a collection of settings.
  #
  # ====  Example
  #     @data = @cxf_user.get_settings
  def get_settings
    @client.raw('get', '/config/system-settings')
  end

  # === Create setting.
  # Create a setting title with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'new_settings'
  #     }
  #     @data = @cxf_user.create_setting(data)
  def create_setting(data)
    @client.raw('post', '/config/system-settings', nil, data_transform(data))
  end

  # === Clear tag.
  # Clear a tag info.
  #
  # ==== Parameters
  # tag:: (Integer) -- Tag id.
  #
  # ==== Example
  #     @data = @cxf_user.clear_tag(1)
  def clear_settings_cache
    @client.raw('post', "/config/system-settings/clear-cache")
  end
end
