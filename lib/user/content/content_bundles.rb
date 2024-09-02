# frozen_string_literal: true
module ContentBundles
  # === Get content bundle.
  # Get a collection of content bundle.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_content_bundles
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_bundles(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_bundles(options, true)
  def get_content_bundles(options = nil, use_post = true)
    get_query_results('/content/content-bundles', options, use_post)
  end

  # === Get content bundle.
  # Get a content bundle info.
  #
  # ==== Parameters
  # id:: (Integer) -- content bundle id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_content_bundle(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_bundle(1, options)
  def get_content_bundle(id, options = nil)
    @client.raw('get', "/content/content-bundles/#{id}", options)
  end

  # === Create content bundle.
  # Create a content bundle with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-content bundle",
  #       content bundle_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_content_bundle(data, options)
  def create_content_bundle(data, options = nil)
    @client.raw('post', '/content/content-bundles', options, data_transform(data))
  end

  # === Update content bundle.
  # Update a content bundle info.
  #
  # ==== Parameters
  # id:: (Integer) -- content bundle id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-content bundle'
  #     }
  #     @data = @cxf_user.update_content_bundle(5, data)
  def update_content_bundle(id, data, options = nil)
    @client.raw('put', "/content/content-bundles/#{id}", options, data_transform(data))
  end

  # === Delete content bundle.
  # Delete a content bundle.
  #
  # ==== Parameters
  # id:: (Integer) -- content bundle id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_content_bundle(6)
  def delete_content_bundle(id)
    @client.raw('delete', "/content/content-bundles/#{id}")
  end
end
