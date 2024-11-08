# frozen_string_literal: true

module Logs
  # === Get logs.
  # Get a collection of logs.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_logs
  #
  # ==== Second Example
  #     options = { fields: 'id' }
  #     @data = @cxf_user.get_logs(options)
  def get_logs(options = nil)
    @client.raw('get', '/config/logs', options)
  end

  # === Get log.
  # Get a log info.
  #
  # ==== Parameters
  # id:: (Integer) -- Relationship id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_log(1)
  #
  # ==== Second Example
  #     options = { fields: 'id' }
  #     @data = @cxf_user.get_log(1, options)
  def get_log(id, options = nil)
    @client.raw('get', "/config/logs/#{id}", options)
  end

  # === Create log.
  # Create a log with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       alias_1: 'eventsCopy',
  #       alias_2: 'ticketsCopy',
  #       object_model_1: 'Story',
  #       object_model_2: 'Product'
  #     }
  #     @data = @cxf_user.create_log(data)
  def create_log(data)
    @client.raw('post', '/config/logs', nil, data_transform(data))
  end

  # === Update log.
  # Update a log info.
  #
  # ==== Parameters
  # id:: (Integer) -- Relationship id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       alias_1: 'eventsCopyModified',
  #       alias_2: 'ticketsCopyModified',
  #       object_model_1: 'Story',
  #       object_model_2: 'Product'
  #     }
  #     @data = @cxf_user.update_log(5, data)
  def update_log(id, data)
    @client.raw('put', "/config/logs/#{id}", nil, data_transform(data))
  end

  # === Delete log.
  # Delete a log.
  #
  # ==== Parameters
  # id:: (Integer) -- Relationship id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_log(5)
  def delete_log(id)
    @client.raw('delete', "/config/logs/#{id}")
  end
end
