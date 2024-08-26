# frozen_string_literal: true

require_relative './companies'
require_relative './contacts'

module CRM
  include Companies
  include Contacts
end
