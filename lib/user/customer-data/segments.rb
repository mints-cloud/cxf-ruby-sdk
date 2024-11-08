# frozen_string_literal: true

module Segments
  ##
  # == Segments
  #

  # === Get segments.
  # Get a collection of segments.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_segments
  #
  # ==== Second Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_segments(options)
  #
  # ==== Third Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_segments(options, false)
  def get_segments(options = nil, use_post = true)
    get_query_results('/customer-data/segments', options, use_post)
  end

  # === Get segment.
  # Get a segment info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_segment(21)
  #
  # ==== Second Example
  #     options = { fields: 'id, title' }
  #     @data = @cxf_user.get_segment(21, options)
  def get_segment(id, options = nil)
    @client.raw('get', "/customer-data/segments/#{id}", options)
  end

  # === Create segment.
  # Create a segment with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.create_segment(data)
  def create_segment(data, options = nil)
    @client.raw('post', '/customer-data/segments/', options, data_transform(data))
  end

  # === Update segment.
  # Update a segment info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value_modified'
  #     }
  #     @data = @cxf_user.update_segment(23, data)
  def update_segment(id, data, options = nil)
    @client.raw('put', "/customer-data/segments/#{id}", options, data_transform(data))
  end

  ##
  # == Segments Bulk Actions
  #

  # === Delete Segments.
  # Delete a group of segments.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids: %w[21 22] }
  #     @data = @cxf_user.delete_segments(data)
  def delete_segments(data)
    @client.raw('delete', '/customer-data/segments/delete', nil, data_transform(data))
  end
end
