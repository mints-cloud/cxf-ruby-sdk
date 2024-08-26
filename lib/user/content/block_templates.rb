# frozen_string_literal: true

module BlockTemplates
  # === Get block templates.
  # Get a collection of block templates.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @mints_user.get_block_templates
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, title'
  #     }
  #     @data = @mints_user.get_block_templates(options)
  def get_block_templates(options = nil)
    @client.raw('get', '/content/block-templates', options)
  end

  # === Get block template.
  # Get a block template info.
  #
  # ==== Parameters
  # id:: (Integer) -- block template id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @mints_user.get_block_template(2)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'title'
  #     }
  #     @data = @mints_user.get_block_template(1, options)
  def get_block_template(id, options = nil)
    @client.raw('get', "/content/block-templates/#{id}", options)
  end

  # === Create block template.
  # Create a block template with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New block Template',
  #       slug: 'new-block-template-slug'
  #     }
  #     @data = @mints_user.create_block_template(data)
  def create_block_template(data, options = nil)
    @client.raw('post', '/content/block-templates', options, data_transform(data))
  end

  # === Update block template.
  # Update a block template info.
  #
  # ==== Parameters
  # id:: (Integer) -- block template id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New block Template Modified'
  #     }
  #     @data = @mints_user.update_block_template(3, data)
  def update_block_template(id, data)
    @client.raw('put', "/content/block-templates/#{id}", nil, data_transform(data))
  end
end
