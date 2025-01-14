# frozen_string_literal: true

module Contacts
  ##
  # == Contacts
  #

  ##
  # === Get contacts support data.
  #
  # ==== Example
  #     @data = @cxf_user.get_contacts_support_data
  def get_contacts_support_data
    @client.raw('get', '/customer-data/contacts/support-data')
  end

  ##
  # === Get online activity.
  # Get online activity of a contact.
  #
  # ==== Parameters
  # id:: (Integer) -- Contact id.
  #
  # ==== Example
  #     @data = @cxf_user.get_online_activity(5)
  def get_online_activity(id)
    @client.raw('get', "/customer-data/contacts/#{id}/online-activity")
  end

  ##
  # === Get contacts.
  # Get a collection of contacts.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  # use_post:: (Boolean) -- Variable to determine if the request is by 'post' or 'get' functions.
  #
  # ==== First Example
  #     @data = @cxf_user.get_contacts
  #
  # ==== Second Example
  #     options = {
  #       sort: 'id',
  #       'fields[contacts]': 'id, email'
  #     }
  #     @data = @cxf_user.get_contacts(options)
  #
  # ==== Third Example
  #     options = {
  #       sort: 'id',
  #       'fields[contacts]': 'id, email'
  #     }
  #     @data = @cxf_user.get_contacts(options, true)
  def get_contacts(options = nil, use_post = true)
    get_query_results('/customer-data/contacts', options, use_post)
  end

  ##
  # === Get contact.
  # Get a contact data.
  #
  # ==== Parameters
  # id:: (Integer) -- Contact id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_contact(5)
  #
  # ==== Second Example
  #     options = {
  #       sort: 'id',
  #       'fields[contacts]': 'id, email'
  #     }
  #     @data = @cxf_user.get_contact(5, options)
  def get_contact(id, options = nil)
    @client.raw('get', "/customer-data/contacts/#{id}", options)
  end

  ##
  # === Create contact.
  # Create a contact with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       email: 'email@example.com',
  #       given_name: 'Given Name',
  #       last_name: 'Last Name',
  #       password: '123456'
  #     }
  #     @data = @cxf_user.create_contact(data)
  def create_contact(data, options = nil)
    @client.raw('post', '/customer-data/contacts', options, data_transform(data))
  end

  ##
  # === Add contact profile.
  # Add a profile to a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  def add_contact_profile(contact_id, data, options = nil)
    @client.raw('post', "/customer-data/contacts/#{contact_id}/add-profiles", options, data)
  end

  ##
  # === Remove contact profile.
  # Remove a profile from a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== Example
  #     @data = @cxf_user.remove_contact_profile(4)
  def remove_contact_profile(contact_id, options = nil)
    @client.raw('post', "/customer-data/contacts/#{contact_id}/remove-profiles", options)
  end

  ##
  # === Update contact.
  # Update contact data.
  #
  # ==== Parameters
  # id:: (Integer) -- Contact id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       email: 'email_modified@example.com',
  #       company_id: 3
  #     }
  #     @data = @cxf_user.update_contact(65, data)
  def update_contact(id, data, options = nil)
    @client.raw('put', "/customer-data/contacts/#{id}", options, data_transform(data))
  end

  ##
  # === Get contact deals.
  # Get a collection of deals of a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  #
  # ==== Example
  #     @data = @cxf_user.get_contact_deal(5)
  def get_contact_deal(contact_id)
    @client.raw('get', "/customer-data/contacts/#{contact_id}/deals")
  end

  ##
  # === Create contact deal.
  # Create a contact deal with data.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { deal_id: 6 }
  #     @data = @cxf_user.create_contact_deal(5, data.to_json)
  def create_contact_deal(contact_id, data)
    @client.raw('post', "/customer-data/contacts/#{contact_id}/deals", nil, data)
  end

  ##
  # === Delete contact deal.
  # Delete a contact deal with data.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # deal_id:: (Integer) -- Deal id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_contact_deal(5, 100)
  def delete_contact_deal(contact_id, deal_id)
    @client.raw('delete', "/customer-data/contacts/#{contact_id}/deals/#{deal_id}")
  end

  ##
  # === Get contact user.
  # Get user data of a contact.
  #
  # ==== Parameters
  # TODO: Replace Resource collection options url
  # contact_id:: (Integer) -- Contact id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== Example
  #     @data = @cxf_user.get_contact_user(66)
  def get_contact_user(contact_id)
    @client.raw('get', "/customer-data/contacts/#{contact_id}/users")
  end

  ##
  # === Create contact user.
  # Relate a contact with an user.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { user_id: 9 }
  #     @data = @cxf_user.create_contact_user(66, data.to_json)
  def create_contact_user(contact_id, data)
    @client.raw('post', "/customer-data/contacts/#{contact_id}/users", nil, data)
  end

  ##
  # === Delete contact user.
  # Delete a relationship between a contact and an user.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  # id:: (Integer) -- User id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_contact_user(153, 9)
  def delete_contact_user(contact_id, id)
    @client.raw('delete', "/customer-data/contacts/#{contact_id}/users/#{id}")
  end

  ##
  # === Get contact segments.
  # Get segments of a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  #
  # ==== Example
  #     @data = @cxf_user.get_contact_segments(1)
  def get_contact_segments(contact_id)
    @client.raw('get', "/customer-data/contacts/#{contact_id}/segments")
  end

  ##
  # === Get contact submissions.
  # Get submissions of a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  #
  # ==== Example
  #     @data = @cxf_user.get_contact_submissions(146)
  def get_contact_submissions(contact_id)
    @client.raw('get', "/customer-data/contacts/#{contact_id}/submissions")
  end

  ##
  # === Get contact tags.
  # Get tags of a contact.
  #
  # ==== Parameters
  # contact_id:: (Integer) -- Contact id.
  #
  # ==== Example
  #     @data = @cxf_user.get_contact_tags(1)
  def get_contact_tags(contact_id)
    @client.raw('get', "/customer-data/contacts/#{contact_id}/tags")
  end

  ##
  # === Create contact merge.
  # Merge contacts.
  #
  # ==== Parameters
  # id:: (Integer) -- Contact id.
  # data:: (Hash) -- Data to be submitted. It contains ids to be merged.
  #
  # ==== Example
  #     data = { mergeContactIds: [152] }
  #     @data = @cxf_user.merge_contacts(151, data)
  def merge_contacts(id, data)
    @client.raw('post', "/customer-data/contacts/#{id}/merge", nil, data_transform(data))
  end

  ##
  # === Send magic links.
  # Send magic links to contacts.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       contacts: %w[email_1@example.com email_2@example.com email_3@example.com],
  #       templateId: 2,
  #       redirectUrl: "",
  #       lifeTime: 1440,
  #       maxVisits: 3
  #     }
  #     @data = @cxf_user.send_magic_links(data)
  def send_magic_links(data)
    @client.raw('post', '/customer-data/contacts/send-magic-link', nil, data_transform(data))
  end

  ##
  # == Contacts Bulk Actions
  #

  ##
  # === Delete contacts.
  # Delete different contacts.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = { ids": %w[67 68 69] }
  #     @data = @cxf_user.delete_contacts(data)
  def delete_contacts(data)
    # TODO: ContactController.delete need a success output
    @client.raw('delete', '/customer-data/contacts/delete', nil, data_transform(data))
  end
end
