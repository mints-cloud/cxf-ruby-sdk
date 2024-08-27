# frozen_string_literal: true

module Instances
  # === Duplicate instance.
  # Duplicate a instance.
  #
  # ==== Parameters
  # id:: (Integer) -- instance id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { options: [] }
  #     @data = @cxf_user.duplicate_instance(1, data.to_json)
  def duplicate_instance(id, data)
    @client.raw('post', "/content/instances/#{id}/duplicate", nil, data)
  end

  # === Get instances.
  # Get a collection of instances.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_instances
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_instances(options)
  #
  # ==== Third Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_instances(options, true)
  def get_instances(options = nil, use_post = true)
    get_query_results('/content/instances', options, use_post)
  end

  # === Get instance.
  # Get a instance info.
  #
  # ==== Parameters
  # id:: (Integer) -- instance id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_instance(1)
  #
  # ==== Second Example
  #     options = {
  #       fields: 'id, slug'
  #     }
  #     @data = @cxf_user.get_instance(1, options)
  def get_instance(id, options = nil)
    @client.raw('get', "/content/instances/#{id}", options)
  end

  # === Create instance.
  # Create a instance with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: "new-instance",
  #       instance_template_id: 1
  #     }
  #
  #     options = { fields: 'id,slug' }
  #
  #     @data = @cxf_user.create_instance(data, options)
  def create_instance(data, options = nil)
    @client.raw('post', '/content/instances', options, data_transform(data))
  end

  # === Create instance version.
  # Create a instance version with data.
  #
  # ==== Parameters
  # id:: (Integer) -- instance id.
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  def create_instance_version(id, data, options = nil)
    @client.raw('post', "/content/instances/#{id}/print-version", options, data_transform(data))
  end

  # === Update instance.
  # Update a instance info.
  #
  # ==== Parameters
  # id:: (Integer) -- instance id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       user_id: 1,
  #       slug: 'new-instance'
  #     }
  #     @data = @cxf_user.update_instance(5, data)
  def update_instance(id, data, options = nil)
    @client.raw('put', "/content/instances/#{id}", options, data_transform(data))
  end

  # === Delete instance.
  # Delete a instance.
  #
  # ==== Parameters
  # id:: (Integer) -- instance id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_instance(6)
  def delete_instance(id)
    @client.raw('delete', "/content/instances/#{id}")
  end
end
