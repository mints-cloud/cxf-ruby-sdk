# frozen_string_literal: true

require_relative './item_prices'
require_relative './price_lists'
require_relative './product_templates'
require_relative './product_variations'
require_relative './products'
require_relative './product_versions'
require_relative './skus'
require_relative './taxes'
require_relative './variant_options'
require_relative './variant_values'
require_relative './vouchers'

module Ecommerce
  include ItemPrices
  include PriceList
  include ProductTemplates
  include ProductVariations
  include Products
  include ProductVersions
  include Skus
  include Taxes
  include VariantOptions
  include VariantValues
  include Vouchers
end
