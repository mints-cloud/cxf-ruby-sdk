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
require_relative './docs'
require_relative './exports'
require_relative './logs'
require_relative './password'
require_relative './calendars'

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
  include Docs
  include Exports
  include Logs
  include Password
  include Calendars
end
