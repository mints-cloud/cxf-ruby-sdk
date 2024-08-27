# frozen_string_literal: true

module Templates
  # === Get templates.
  # Get a collection of templates.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_templates
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, title'
  #     }
  #     @data = @cxf_user.get_templates(options)
  def get_templates(options = nil)
    @client.raw('get', '/content/templates', options)
  end

  # === Get template.
  # Get a template info.
  #
  # ==== Parameters
  # id:: (Integer) -- template id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_template(2)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'title'
  #     }
  #     @data = @cxf_user.get_template(1, options)
  def get_template(id, options = nil)
    @client.raw('get', "/content/templates/#{id}", options)
  end

  # === Create template.
  # Create a template with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New Template',
  #       slug: 'new/template-slug'
  #     }
  #     @data = @cxf_user.create_template(data)
  def create_template(data, options = nil)
    @client.raw('post', '/content/templates', options, data_transform(data))
  end

  # === Update template.
  # Update a template info.
  #
  # ==== Parameters
  # id:: (Integer) -- template id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New Template Modified'
  #     }
  #     @data = @cxf_user.update_template(3, data)
  def update_template(id, data)
    @client.raw('put', "/content/templates/#{id}", nil, data_transform(data))
  end
end
