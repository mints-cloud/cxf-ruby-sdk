# frozen_string_literal: true

require_relative './item_codes'
require_relative './orders'
require_relative './order_templates'

module Ecommerce
  include ItemCodes
  include Orders
  include OrderTemplates
end
