# frozen_string_literal: true
module MessageTemplates

  # === Get message_templates.
  # Get a collection of message_templates.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_message_templates
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_message_templates(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_message_templates(options, true)
  def get_message_templates(options = nil, use_post = true)
    get_query_results('/content/message-templates', options, use_post)
  end

  # === Get message_template.
  # Get a message_template info.
  #
  # ==== Parameters
  # id:: (Integer) -- message_template id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_message_template(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_message_template(1, options)
  def get_message_template(id, options = nil)
    @client.raw('get', "/content/message-templates/#{id}", options)
  end

  # === Create message_template.
  # Create a message_template with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-message_template",
  #       message_template_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_message_template(data, options)
  def create_message_template(data, options = nil)
    @client.raw('post', '/content/message-templates', options, data_transform(data))
  end

  # === Send message_template.
  # Send a message using a message template with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       message_template_id: 2,
  #       content: "Hello, World!"
  #     }
  #     @data = @cxf_user.send_message_template(data)
  def send_message_template(data, options = nil)
    @client.raw('post', '/content/messages/send', options, data_transform(data))
  end

  # === Update message_template.
  # Update a message_template info.
  #
  # ==== Parameters
  # id:: (Integer) -- message_template id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-message_template'
  #     }
  #     @data = @cxf_user.update_message_template(5, data)
  def update_message_template(id, data, options = nil)
    @client.raw('put', "/content/message-templates/#{id}", options, data_transform(data))
  end

  # === Delete message_template.
  # Delete a message_template.
  #
  # ==== Parameters
  # id:: (Integer) -- message_template id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_message_template(6)
  def delete_message_template(id)
    @client.raw('delete', "/content/message-templates/#{id}")
  end
end
