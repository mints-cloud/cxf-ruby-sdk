# frozen_string_literal: true

### V1/CONTENT ###

require_relative './assets'
require_relative './content_prints'
require_relative './print_versions'

module PublicContent
  include PublicAssets
  include ContentPrints
  include PrintVersions
end
