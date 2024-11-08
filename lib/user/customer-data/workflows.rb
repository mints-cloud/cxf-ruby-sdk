# frozen_string_literal: true

module Workflows
  ##
  # == Workflows
  #

  # === Get workflows.
  # Get a collection of workflows.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_workflows
  #
  # ==== Second Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_workflows(options)
  #
  # ==== Third Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_workflows(options, false)
  def get_workflows(options = nil, use_post = true)
    get_query_results('/customer-data/workflows', options, use_post)
  end

  # === Get workflow.
  # Get a workflow info.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_workflow(21)
  #
  # ==== Second Example
  #     options = { fields: 'id, title' }
  #     @data = @cxf_user.get_workflow(21, options)
  def get_workflow(id, options = nil)
    @client.raw('get', "/customer-data/workflows/#{id}", options)
  end

  # === Create workflow.
  # Create a workflow with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.create_workflow(data)
  def create_workflow(data, options = nil)
    @client.raw('post', '/customer-data/workflows/', options, data_transform(data))
  end

  # === Update workflow object steps.
  # Update a workflow's object steps.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  def update_workflow_object_steps(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows/#{id}/object-step", options, data)
  end

  # === Check workflow object steps.
  # Check if object steps are valid.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  def check_workflow_object_steps(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows/#{id}/object-step/check-item", options, data)
  end

  # === Update workflow.
  # Update a workflow info.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       example_field: 'example_value_modified'
  #     }
  #     @data = @cxf_user.update_workflow(23, data)
  def update_workflow(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows/#{id}", options, data_transform(data))
  end

  ##
  # == Workflows Bulk Actions
  #

  # === Delete Workflows.
  # Delete a group of workflows.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids: %w[21 22] }
  #     @data = @cxf_user.delete_workflows(data)
  def delete_workflows(data)
    @client.raw('delete', '/customer-data/workflows/delete', nil, data_transform(data))
  end
end
