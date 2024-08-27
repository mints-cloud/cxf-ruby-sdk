# frozen_string_literal: true

require_relative './concerns/cxf_clients'
require_relative '../helpers/user_auth_helper'
require_relative '../helpers/contact_auth_helper'

module Cxf
  class BaseApiController < ActionController::Base
    # Concerns
    include CxfClients

    # Helpers
    include ContactAuthHelper
    include UserAuthHelper

    def define_cxf_clients
      %w[contact pub]
    end

    ##
    # === Cxf contact Login.
    # This method works to override the base to add the redirect parameter
    # The main method is located in contact_auth_helper.rb
    def cxf_contact_magic_link_login(hash)
      super(hash, true)
    end
  end
end