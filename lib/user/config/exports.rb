# frozen_string_literal: true

module Exports
  # === Get export.
  # Get a collection of export.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_export
  #
  # ==== Second Example
  #     options = { sort: 'id' }
  #     @data = @cxf_user.get_export(options)
  def get_exports(options = nil)
    @client.raw('get', '/config/export', options)
  end

  # === Get export.
  # Get an export configuration info.
  #
  # ==== Parameters
  # id:: (Integer) -- Export configuration id.
  #
  # ==== Example
  #     @data = @cxf_user.get_export(10)
  def get_export(id)
    @client.raw('get', "/config/export/#{id}")
  end

  # === Get export jobs using view id.
  # Get a collection of export jobs using a view id.
  #
  # ==== Parameters
  # id:: (Integer) -- View id.
  #
  # ==== Example
  #     @data = @cxf_user.get_export_jobs_using_view_id(10)
  def get_export_jobs_using_view_id(id)
    @client.raw('get', "/config/export/#{id}/jobs")
  end
end
