# frozen_string_literal: true

require_relative './concerns/cxf_clients'
require_relative '../helpers/user_auth_helper'

module Cxf
  class AdminBaseController < ActionController::Base

    include CxfClients
    include UserAuthHelper

    # Override default values for cxf clients concern
    def define_cxf_clients
      %w[user service_account]
    end
  end
end