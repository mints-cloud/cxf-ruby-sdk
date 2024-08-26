# frozen_string_literal: true
module Blocks
  # === Duplicate block.
  # Duplicate a block.
  #
  # ==== Parameters
  # id:: (Integer) -- block id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { options: [] }
  #     @data = @mints_user.duplicate_block(1, data.to_json)
  def duplicate_block(id, data)
    @client.raw('post', "/content/blocks/#{id}/duplicate", nil, data)
  end

  # === Get blocks.
  # Get a collection of blocks.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @mints_user.get_blocks
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @mints_user.get_blocks(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @mints_user.get_blocks(options, true)
  def get_blocks(options = nil, use_post = true)
    get_query_results('/content/blocks', options, use_post)
  end

  # === Get block.
  # Get a block info.
  #
  # ==== Parameters
  # id:: (Integer) -- block id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @mints_user.get_block(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @mints_user.get_block(1, options)
  def get_block(id, options = nil)
    @client.raw('get', "/content/blocks/#{id}", options)
  end

  # === Create block.
  # Create a block with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-block",
  #       block_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @mints_user.create_block(data, options)
  def create_block(data, options = nil)
    @client.raw('post', '/content/blocks', options, data_transform(data))
  end

  # === Update block.
  # Update a block info.
  #
  # ==== Parameters
  # id:: (Integer) -- block id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-block'
  #     }
  #     @data = @mints_user.update_block(5, data)
  def update_block(id, data, options = nil)
    @client.raw('put', "/content/blocks/#{id}", options, data_transform(data))
  end

  # === Delete block.
  # Delete a block.
  #
  # ==== Parameters
  # id:: (Integer) -- block id.
  #
  # ==== Example
  #     @data = @mints_user.delete_block(6)
  def delete_block(id)
    @client.raw('delete', "/content/blocks/#{id}")
  end
end
