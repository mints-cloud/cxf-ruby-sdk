# frozen_string_literal: true
module Prints

  # === Get prints.
  # Get a collection of prints.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_prints
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_prints(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_prints(options, true)
  def get_prints(options = nil, use_post = true)
    get_query_results('/content/prints', options, use_post)
  end

  # === Get print.
  # Get a print info.
  #
  # ==== Parameters
  # id:: (Integer) -- print id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_print(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_print(1, options)
  def get_print(id, options = nil)
    @client.raw('get', "/content/prints/#{id}", options)
  end

  # === Create print.
  # Create a print with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-print",
  #       print_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_print(data, options)
  def create_print(data, options = nil)
    @client.raw('post', '/content/prints', options, data_transform(data))
  end

  # === Update print.
  # Update a print info.
  #
  # ==== Parameters
  # id:: (Integer) -- print id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-print'
  #     }
  #     @data = @cxf_user.update_print(5, data)
  def update_print(id, data, options = nil)
    @client.raw('put', "/content/prints/#{id}", options, data_transform(data))
  end

  # === Delete print.
  # Delete a print.
  #
  # ==== Parameters
  # id:: (Integer) -- print id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_print(6)
  def delete_print(id)
    @client.raw('delete', "/content/prints/#{id}")
  end
end
