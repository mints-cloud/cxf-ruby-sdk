# frozen_string_literal: true
module ContentPrintsSA
  # === Get content print.
  # Get a collection of content print.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_content_prints
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_prints(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_prints(options, true)
  def get_sa_content_prints(options = nil, use_post = true)
    get_query_results('/content/content-prints', options, use_post)
  end

  # === Get content print.
  # Get a content print info.
  #
  # ==== Parameters
  # id:: (Integer) -- content print id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_content_print(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_content_print(1, options)
  def get_sa_content_print(id, options = nil)
    @client.raw('get', "/content/content-prints/#{id}", options)
  end

  # === Create content print.
  # Create a content print with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-content print",
  #       content print_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_content_print(data, options)
  def create_sa_content_print(data, options = nil)
    @client.raw('post', '/content/content-prints', options, data_transform(data))
  end

  # === Update content print.
  # Update a content print info.
  #
  # ==== Parameters
  # id:: (Integer) -- content print id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-content print'
  #     }
  #     @data = @cxf_user.update_content_print(5, data)
  def update_sa_content_print(id, data, options = nil)
    @client.raw('put', "/content/content-prints/#{id}", options, data_transform(data))
  end

  # === Delete content print.
  # Delete a content print.
  #
  # ==== Parameters
  # id:: (Integer) -- content print id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_content_print(6)
  def delete_sa_content_print(id)
    @client.raw('delete', "/content/content-prints/#{id}")
  end
end
