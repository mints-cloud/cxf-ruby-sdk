# frozen_string_literal: true

module PrintVersionsSA
  # === Get print versions.
  # Get a collection of print versions.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_print_versions
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, title'
  #     }
  #     @data = @cxf_user.get_print_versions(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, title'
  #     }
  #     @data = @cxf_user.get_print_versions(options, true)
  def get_sa_print_versions(options = nil, use_post = true)
    get_query_results('/content/print-versions', options, use_post, '/api/v1')
  end

  # === Get print version.
  # Get a print version info.
  #
  # ==== Parameters
  # id:: (Integer) -- print version id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_print_version(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, title'
  #     }
  #     @data = @cxf_user.get_print_version(1, options)
  def get_sa_print_version(id, options = nil)
    @client.raw('get', "/content/print-versions/#{id}", options, nil, '/api/v1')
  end

  # === Create print version.
  # Create a print version with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New print',
  #       slug: 'new-print',
  #       social_metadata: 'social metadata'
  #     }
  #     @data = @cxf_user.create_print_version(data)
  def create_sa_print_version(data, options = nil)
    @client.raw('post', '/content/print-versions', options, data_transform(data), '/api/v1')
  end

  # === CHECK THIS ===
  # def create_print_version_from_instance(id, data, options = nil)
  #   @client.raw('post', "/content/print-versions/#{id}/print-version", options, data_transform(data))
  # end

  # === Update print version.
  # Update a print version info.
  #
  # ==== Parameters
  # id:: (Integer) -- print version id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New print Modified',
  #       slug: 'new-print'
  #     }
  #     @data = @cxf_user.update_print_version(5, data)
  def update_sa_print_version(id, data, options = nil)
    @client.raw('put', "/content/print-versions/#{id}", options, data_transform(data), '/api/v1')
  end

  # === Delete print version.
  # Delete a print version.
  #
  # ==== Parameters
  # id:: (Integer) -- print version id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_print_version(6)
  def delete_sa_print_version(id)
    @client.raw('delete', "/content/print-versions/#{id}", nil, nil, '/api/v1')
  end
end
