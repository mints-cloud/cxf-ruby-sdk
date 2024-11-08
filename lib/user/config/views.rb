# frozen_string_literal: true

module Views
  # === Get views.
  # Get a collection of views.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_views
  #
  # ==== Second Example
  #     options = { sort: 'id' }
  #     @data = @cxf_user.get_views(options)
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
  #     @data = @cxf_user.get_export(10)
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
  #     @data = @cxf_user.create_export(data)
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
  #     @data = @cxf_user.update_export(36, data)
  def update_view(id, data)
    @client.raw('put', "/config/views/#{id}", nil, data_transform(data))
  end

  # === Get view query.
  # Get a view query.
  #
  # ==== Parameters
  # id_or_slug:: (String) -- The id or slug of the view to be queried.
  #
  # ==== Example
  #     @data = @cxf_user.get_view_query('view-slug')
  def get_view_query(id_or_slug)
    @client.raw('get', "/config/views/#{id_or_slug}/query")
  end

  # === Export view to BigQuery.
  # Export a view to BigQuery using its id or slug.
  #
  # ==== Parameters
  # id_or_slug:: (String) -- The id or slug of the view to be exported.
  #
  # ==== Example
  #     @data = @cxf_user.export_view_to_bigquery('view-slug')
  def export_view_to_bigquery(id_or_slug)
    @client.raw('post', "/config/views/#{id_or_slug}/export")
  end
end
