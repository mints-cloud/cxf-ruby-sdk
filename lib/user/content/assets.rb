# frozen_string_literal: true
module Assets

  # === Get assets.
  # Get a collection of assets.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_assets
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_assets(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_assets(options, true)
  def get_assets(options = nil, use_post = true)
    get_query_results('/content/assets', options, use_post)
  end

  # === Get asset.
  # Get a asset info.
  #
  # ==== Parameters
  # id:: (Integer) -- asset id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_asset(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_asset(1, options)
  def get_asset(id, options = nil)
    @client.raw('get', "/content/assets/#{id}", options)
  end

  def get_asset_usage(id, options = nil)
    @client.raw('get', "/content/assets/#{id}/usage", options)
  end

  # === Create asset.
  # Create a asset with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-asset",
  #       asset_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_asset(data, options)
  def create_asset(data, options = nil)
    @client.raw('post', '/content/assets', options, data_transform(data))
  end

  # === Update asset.
  # Update a asset info.
  #
  # ==== Parameters
  # id:: (Integer) -- asset id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-asset'
  #     }
  #     @data = @cxf_user.update_asset(5, data)
  def update_asset(id, data, options = nil)
    @client.raw('post', "/content/assets/#{id}", options, data_transform(data))
  end

  # === Delete asset.
  # Delete a asset.
  #
  # ==== Parameters
  # id:: (Integer) -- asset id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_asset(6)
  def delete_asset(id)
    @client.raw('delete', "/content/assets/#{id}")
  end
end
