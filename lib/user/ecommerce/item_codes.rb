# frozen_string_literal: true

module ItemCodes
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
  #     @data = @cxf_user.get_item_codes
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_item_codes(options)
  def get_item_codes(options = nil)
    @client.raw('get', '/ecommerce/item-codes', options)
  end

  # === Get item code.
  # Get a item code info.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_item_code(1)
  #
  # ==== Second Example
  #     options = { fields: 'code_cents' }
  #     @data = @cxf_user.get_item_code(1, options)
  def get_item_code(id, options = nil)
    @client.raw('get', "/ecommerce/item-codes/#{id}", options)
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
  #     @data = @cxf_user.create_item_code(data)
  def create_item_code(data)
    # FIXME: Api send sku_id as null and DB doesnt allow that.
    @client.raw('post', '/ecommerce/item-codes', nil, data_transform(data))
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
  #     @data = @cxf_user.update_item_code(1, data)
  def update_item_code(id, data)
    @client.raw('put', "/ecommerce/item-codes/#{id}", nil, data_transform(data))
  end

  # === Delete item code.
  # Delete a item code.
  #
  # ==== Parameters
  # id:: (Integer) -- Item code id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_item_code(803)
  def delete_item_code(id)
    @client.raw('delete', "/ecommerce/item-codes/#{id}")
  end
end
