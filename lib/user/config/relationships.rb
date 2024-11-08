# frozen_string_literal: true

module Relationships
  # === Attach relationship.
  # Attach a relationship.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #
  def attach_relationship(data)
    @client.raw('post', '/config/relationships/attach', nil, data_transform(data))
  end

  # === Detach relationship.
  # Detach a relationship.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #
  def detach_relationship(data)
    @client.raw('post', '/config/relationships/detach', nil, data_transform(data))
  end


  # === Get relationships.
  # Get a collection of relationships.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_relationships
  #
  # ==== Second Example
  #     options = { fields: 'id' }
  #     @data = @cxf_user.get_relationships(options)
  def get_relationships(options = nil)
    @client.raw('get', '/config/relationships', options)
  end

  # === Get relationship.
  # Get a relationship info.
  #
  # ==== Parameters
  # id:: (Integer) -- Relationship id.
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_relationship(1)
  #
  # ==== Second Example
  #     options = { fields: 'id' }
  #     @data = @cxf_user.get_relationship(1, options)
  def get_relationship(id, options = nil)
    @client.raw('get', "/config/relationships/#{id}", options)
  end

  # === Create relationship.
  # Create a relationship with data.
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
  #     @data = @cxf_user.create_relationship(data)
  def create_relationship(data)
    @client.raw('post', '/config/relationships', nil, data_transform(data))
  end

  # === Update relationship.
  # Update a relationship info.
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
  #     @data = @cxf_user.update_relationship(5, data)
  def update_relationship(id, data)
    @client.raw('put', "/config/relationships/#{id}", nil, data_transform(data))
  end

  # === Delete relationship.
  # Delete a relationship.
  #
  # ==== Parameters
  # id:: (Integer) -- Relationship id.
  #
  # ==== Example
  #     @data = @cxf_user.delete_relationship(5)
  def delete_relationship(id)
    @client.raw('delete', "/config/relationships/#{id}")
  end

  ##
  # === Update relationship pivot fields.
  # Update pivot fields for relationships.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       field_name_1: 'value_1',
  #       field_name_2: 'value_2'
  #     }
  #     @data = @cxf_user.update_relationship_pivot_fields(data)
  def update_relationship_pivot_fields(data)
    @client.raw('put', '/config/relationships/pivot-fields', nil, data_transform(data))
  end
end
