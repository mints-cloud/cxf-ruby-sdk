# frozen_string_literal: true
module Bundles

  # === Get bundles.
  # Get a collection of bundles.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_bundles
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_bundles(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_bundles(options, true)
  def get_bundles(options = nil, use_post = true)
    get_query_results('/content/bundles', options, use_post)
  end

  # === Get bundle.
  # Get a bundle info.
  #
  # ==== Parameters
  # id:: (Integer) -- bundle id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_bundle(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_bundle(1, options)
  def get_bundle(id, options = nil)
    @client.raw('get', "/content/bundles/#{id}", options)
  end

  # === Create bundle.
  # Create a bundle with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-bundle",
  #       bundle_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_bundle(data, options)
  def create_bundle(data, options = nil)
    @client.raw('post', '/content/bundles', options, data_transform(data))
  end

  # === Update bundle.
  # Update a bundle info.
  #
  # ==== Parameters
  # id:: (Integer) -- bundle id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-bundle'
  #     }
  #     @data = @cxf_user.update_bundle(5, data)
  def update_bundle(id, data, options = nil)
    @client.raw('put', "/content/bundles/#{id}", options, data_transform(data))
  end

  # === Delete bundle.
  # Delete a bundle.
  #
  # ==== Parameters
  # id:: (Integer) -- bundle id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_bundle(6)
  def delete_bundle(id)
    @client.raw('delete', "/content/bundles/#{id}")
  end
end
