# frozen_string_literal: true

module Orders
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
  #     @data = @cxf_user.get_orders
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_orders(options)
  def get_orders(options = nil)
    @client.raw('get', '/ecommerce/orders', options)
  end

  # === Get item code.
  # Get a item code info.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_order(1)
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_order(1, options)
  def get_order(id, options = nil)
    @client.raw('get', "/ecommerce/orders/#{id}", options)
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
  #     @data = @cxf_user.create_order(data)
  def create_order(data)
    # FIXME: Api send sku_id as null and DB doesnt allow that.
    @client.raw('post', '/ecommerce/orders', nil, data_transform(data))
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
  #     @data = @cxf_user.update_order(1, data)
  def update_order(id, data)
    @client.raw('put', "/ecommerce/orders/#{id}", nil, data_transform(data))
  end

  # === Delete item code.
  # Delete a item code.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_order(803)
  def delete_order(id)
    @client.raw('delete', "/ecommerce/orders/#{id}")
  end

  # === Add order line item.
  # Add a line item to an order.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       product_id: 1,
  #       price: 10.99,
  #       quantity: 2
  #     }
  #     @data = @cxf_user.add_order_line_item(1, data)
  def add_order_line_item(order_id, data)
    @client.raw('post', "/ecommerce/orders/#{order_id}/line-item", nil, data_transform(data))
  end

  # === Delete order line item.
  # Delete a line item from an order.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_order_line_item(1)
  def delete_order_line_item(order_id)
    @client.raw('delete', "/ecommerce/orders/#{order_id}/line-item")
  end

  # === Update order line item.
  # Update a specific line item within an order.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       item_id: 123,
  #       quantity: 2,
  #       price: 1000
  #     }
  #     @data = @cxf_user.update_order_line_item(1, data)
  def update_order_line_item(order_id, data)
    @client.raw('put', "/ecommerce/orders/#{order_id}/line-item", nil, data_transform(data))
  end

  # === Update order unit line item.
  # Update a specific unit line item within an order.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       unit_id: 3,
  #       quantity: 5
  #     }
  #     @data = @cxf_user.update_order_unit_line_item(1, data)
  def update_order_unit_line_item(order_id, data)
    @client.raw('put', "/ecommerce/orders/#{order_id}/unit-line-item", nil, data_transform(data))
  end

  # === Reorder order line items.
  # Reorder order line items.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       line_items: [
  #         { id: 1, position: 1 },
  #         { id: 2, position: 2 }
  #       ]
  #     }
  #     @data = @cxf_user.reorder_order_line_item(1, data)
  def reorder_order_line_item(order_id, data)
    @client.raw('put', "/ecommerce/orders/#{order_id}/reorder-line-items", nil, data_transform(data))
  end

  # === Change order status.
  # Change order status.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       order_status_id: 2
  #     }
  #     @data = @cxf_user.change_order_status(1, data)
  def change_order_status(order_id, data)
    @client.raw('put', "/ecommerce/orders/#{order_id}/status", nil, data_transform(data))
  end

  # === Create child order.
  # Create a child order from a parent order.
  #
  # ==== Parameters
  # order_id:: (Integer) -- Parent order id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       order_status_id: 2
  #     }
  #     @data = @cxf_user.create_child_order(1, data)
  def create_child_order(order_id, data)
    @client.raw('post', "/ecommerce/orders/#{order_id}/child-order", nil, data_transform(data))
  end
end
