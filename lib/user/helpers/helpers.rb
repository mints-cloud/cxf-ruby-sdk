# frozen_string_literal: true

module Helpers

  ##
  # == Helpers
  #

  # === Slugify.
  # Slugify a text using an object type.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #
  def slugify(data)
    @client.raw('post', '/helpers/slugify', nil, data_transform(data))
  end
end
