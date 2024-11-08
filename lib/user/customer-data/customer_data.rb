# frozen_string_literal: true

require_relative './companies'
require_relative './contacts'
require_relative './profiles'
require_relative './segments'
require_relative './workflows'
require_relative './workflow_steps'

module CustomerData
  include Companies
  include Contacts
  include Profiles
  include Segments
  include Workflows
  include WorkflowSteps
end
