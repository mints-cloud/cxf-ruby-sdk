# frozen_string_literal: true

module WorkflowSteps
  ##
  # == WorkflowsSteps
  #

  # === Get workflows_steps.
  # Get a collection of workflows_steps.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_workflows_steps
  #
  # ==== Second Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_workflows_steps(options)
  #
  # ==== Third Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_workflows_steps(options, false)
  def get_workflow_steps(options = nil, use_post = true)
    get_query_results('/customer-data/workflows-steps', options, use_post)
  end

  # === Get workflow_steps.
  # Get a workflow_steps info.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_workflow_steps(21)
  #
  # ==== Second Example
  #     options = { fields: 'id, title' }
  #     @data = @cxf_user.get_workflow_steps(21, options)
  def get_workflow_step(id, options = nil)
    @client.raw('get', "/customer-data/workflows-steps/#{id}", options)
  end

  # === Create workflow_steps.
  # Create a workflow_steps with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.create_workflow_steps(data)
  def create_workflow_step(data, options = nil)
    @client.raw('post', '/customer-data/workflows-steps/', options, data_transform(data))
  end

  # === Attach workflow_steps.
  # Attach a workflow_steps.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.attach_workflow_step(21, data)
  def attach_workflow_step(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows-steps/#{id}/attach-item", options, data_transform(data))
  end

  # === Detach workflow_steps.
  # Detach a workflow_steps.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.detach_workflow_step(21, data)
  def detach_workflow_step(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows-steps/#{id}/detach-item", options, data_transform(data))
  end

  # === Update workflow_steps.
  # Update a workflow_steps info.
  #
  # ==== Parameters
  # id:: (Integer) -- Workflow id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       example_field: 'example_value_modified'
  #     }
  #     @data = @cxf_user.update_workflow_steps(23, data)
  def update_workflow_step(id, data, options = nil)
    @client.raw('put', "/customer-data/workflows-steps/#{id}", options, data_transform(data))
  end

  ##
  # == WorkflowsSteps Bulk Actions
  #

  # === Delete workflow_steps.
  # Delete a group of workflows.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids: %w[21 22] }
  #     @data = @cxf_user.delete_workflow_steps(data)
  def delete_workflow_steps(data)
    @client.raw('delete', '/customer-data/workflows-steps/delete', nil, data_transform(data))
  end
end
