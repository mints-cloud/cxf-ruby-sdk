# frozen_string_literal: true

module Views
  # === Get views.
  # Get a collection of views.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @mints_user.get_views
  #
  # ==== Second Example
  #     options = { sort: 'id' }
  #     @data = @mints_user.get_views(options)
  def get_views(options = nil)
    @client.raw('get', '/config/views', options)
  end

  # === Get export.
  # Get an export configuration info.
  #
  # ==== Parameters
  # id:: (Integer) -- Export configuration id.
  #
  # ==== Example
  #     @data = @mints_user.get_export(10)
  def get_view(id)
    @client.raw('get', "/config/views/#{id}")
  end

  # === Create export.
  # Create an export with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New configuration',
  #       slug: 'new-configuration',
  #       object_model: 'Contact',
  #       config_json: {}
  #     }
  #     @data = @mints_user.create_export(data)
  def create_view(data)
    @client.raw('post', '/config/views', nil, data_transform(data))
  end

  # === Update export configuration.
  # Update an export configuration info.
  #
  # ==== Parameters
  # id:: (Integer) -- Export configuration id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New configuration',
  #       slug: 'new-configuration',
  #       object_model: 'Contact',
  #       config_json: {}
  #     }
  #     @data = @mints_user.update_export(36, data)
  def update_view(id, data)
    @client.raw('put', "/config/views/#{id}", nil, data_transform(data))
  end
end
