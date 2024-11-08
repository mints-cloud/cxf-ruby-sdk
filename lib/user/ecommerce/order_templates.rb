# frozen_string_literal: true

module OrderTemplates
  ##
  # == Item Prices
  #

  # === Get item codes.
  # Get a collection of item codes.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_order_templates
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_order_templates(options)
  def get_order_templates(options = nil)
    @client.raw('get', '/ecommerce/order-templates', options)
  end

  # === Get item code.
  # Get a item code info.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_order_template(1)
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_order_template(1, options)
  def get_order_template(id, options = nil)
    @client.raw('get', "/ecommerce/order-templates/#{id}", options)
  end

  # === Create item code.
  # Create a item code with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       code_list: [
  #         { id: 1 },
  #         { id: 2 }
  #       ],
  #       code_list_id: 1,
  #       title: 'New Item Price'
  #     }
  #     @data = @cxf_user.create_order_template(data)
  def create_order_template(data)
    # FIXME: Api send sku_id as null and DB doesnt allow that.
    @client.raw('post', '/ecommerce/order-templates', nil, data_transform(data))
  end

  # === Update item code.
  # Update a item code info.
  #
  # ==== Parameters
  # id:: (Integer) -- Order item code id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       code: 12345
  #     }
  #     @data = @cxf_user.update_order_template(1, data)
  def update_order_template(id, data)
    @client.raw('put', "/ecommerce/order-templates/#{id}", nil, data_transform(data))
  end

  # === Delete item code.
  # Delete a item code.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_order_template(803)
  def delete_order_template(id)
    @client.raw('delete', "/ecommerce/order-templates/#{id}")
  end
end
