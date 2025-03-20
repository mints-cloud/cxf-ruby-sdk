# frozen_string_literal: true

### V1/CONTENT ###

require_relative './assets'
require_relative './print_versions'
require_relative './content_prints'

module PublicContent
  include PublicAssets
  include PublicContentPrints
  include PublicPrintVersions
end
