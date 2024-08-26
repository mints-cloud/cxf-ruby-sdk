# frozen_string_literal: true

require_relative './attribute_groups'
require_relative './attributes'
require_relative './views'
require_relative './relationships'
require_relative './seeds'
require_relative './system_settings'
require_relative './tags'
require_relative './taxonomies'
require_relative './users'

module Config
  include AttributeGroups
  include Attributes
  include Views
  include Relationships
  include Seeds
  include SystemSettings
  include Tags
  include Taxonomies
  include Users
end
