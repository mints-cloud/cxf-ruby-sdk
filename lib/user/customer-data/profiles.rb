# frozen_string_literal: true

module Profiles
  ##
  # == Profiles
  #

  # === Get profiles.
  # Get a collection of profiles.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_profiles
  #
  # ==== Second Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_profiles(options)
  #
  # ==== Third Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_profiles(options, false)
  def get_profiles(options = nil, use_post = true)
    get_query_results('/customer-data/profiles', options, use_post)
  end

  # === Get profile.
  # Get a profile info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_profile(21)
  #
  # ==== Second Example
  #     options = { fields: 'id, title' }
  #     @data = @cxf_user.get_profile(21, options)
  def get_profile(id, options = nil)
    @client.raw('get', "/customer-data/profiles/#{id}", options)
  end

  # === Create profile.
  # Create a profile with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value'
  #     }
  #     @data = @cxf_user.create_profile(data)
  def create_profile(data, options = nil)
    @client.raw('post', '/customer-data/profiles/', options, data_transform(data))
  end

  # === Update profile.
  # Update a profile info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         example_field: 'example_value_modified'
  #     }
  #     @data = @cxf_user.update_profile(23, data)
  def update_profile(id, data, options = nil)
    @client.raw('put', "/customer-data/profiles/#{id}", options, data_transform(data))
  end

  ##
  # == Profiles Bulk Actions
  #

  # === Delete Profiles.
  # Delete a group of profiles.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids: %w[21 22] }
  #     @data = @cxf_user.delete_profiles(data)
  def delete_profiles(data)
    @client.raw('delete', '/customer-data/profiles/delete', nil, data_transform(data))
  end
end
