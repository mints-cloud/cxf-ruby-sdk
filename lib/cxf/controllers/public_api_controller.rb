# frozen_string_literal: true

require_relative './concerns/read_config_file'
require_relative '../helpers/proxy_controllers_methods'

module Cxf
  class PublicAPIController < ActionController::API
    include ReverseProxy::Controller
    include AbstractController::Helpers
    include ReadConfigFile
    include ProxyControllersMethods

  end
end