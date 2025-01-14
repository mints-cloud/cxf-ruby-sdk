# frozen_string_literal: true

module Companies
  ##
  # == Companies
  #

  ##
  # === Get companies support data.
  # Get support data of companies.
  #
  # ==== Example
  #     @data = @cxf_user.get_companies_support_data
  def get_companies_support_data
    @client.raw('get', '/customer-data/companies/support-data')
  end

  # === Get companies.
  # Get a collection of companies.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_companies
  #
  # ==== Second Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_companies(options)
  #
  # ==== Third Example
  #     options = { fields: 'id, title', sort: '-id' }
  #     @data = @cxf_user.get_companies(options, false)
  def get_companies(options = nil, use_post = true)
    get_query_results('/customer-data/companies', options, use_post)
  end

  # === Get company.
  # Get a company info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_company(21)
  #
  # ==== Second Example
  #     options = { fields: 'id, title' }
  #     @data = @cxf_user.get_company(21, options)
  def get_company(id, options = nil)
    @client.raw('get', "/customer-data/companies/#{id}", options)
  end

  # === Create company.
  # Create a company with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #         title: 'Company Title',
  #         alias: 'Alias',
  #         website: 'www.company.example.com',
  #         street1: 'Company St',
  #         city: 'Company City',
  #         region: 'Company Region',
  #         postal_code: '12345',
  #         country_id: 144,
  #         tax_identifier: nil
  #     }
  #     @data = @cxf_user.create_company(data)
  def create_company(data, options = nil)
    @client.raw('post', '/customer-data/companies/', options, data_transform(data))
  end

  # === Update company.
  # Update a company info.
  #
  # ==== Parameters
  # id:: (Integer) -- Company id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'Company Title Modified'
  #     }
  #     @data = @cxf_user.update_company(23, data)
  def update_company(id, data, options = nil)
    @client.raw('put', "/customer-data/companies/#{id}", options, data_transform(data))
  end

  ##
  # == Companies Bulk Actions
  #

  # === Delete Companies.
  # Delete a group of companies.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids: %w[21 22] }
  #     @data = @cxf_user.delete_companies(data)
  def delete_companies(data)
    @client.raw('delete', '/customer-data/companies/delete', nil, data_transform(data))
  end
end
