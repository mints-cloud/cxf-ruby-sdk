# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'cxf'
  s.version = '0.0.2'
  s.date = '2024-08-16'
  s.summary = 'CXF gem allows to connect your Rails App to the Customer Experience Framework.'
  s.authors = 'Ruben Gomez Garcia, Omar Mora, Luis Payan, Oscar Castillo, Fabian Garcia'
  s.homepage = 'https://github.com/rubengomez/cxf-ruby-sdk'
  s.required_ruby_version = '>= 2.6.0'
  s.files = %w[
    Gemfile
    README.md
    lib/client.rb
    lib/user.rb
    lib/contact.rb
    lib/pub.rb
    lib/cxf.rb
    lib/errors.rb
    lib/generators/cxf_files_generator.rb
    lib/generators/cxf_config.yml.erb
    lib/generators/cxf_public_controller.rb
    lib/generators/cxf_assets_controller.rb
    lib/generators/cxf_contact_controller.rb
    lib/generators/cxf_user_controller.rb
    lib/cxf/controllers/base_controller.rb
    lib/cxf/controllers/base_api_controller.rb
    lib/cxf/controllers/admin_base_controller.rb
    lib/cxf/controllers/public_api_controller.rb
    lib/cxf/controllers/contact_api_controller.rb
    lib/cxf/controllers/user_api_controller.rb
    lib/cxf/controllers/concerns/cxf_clients.rb
    lib/cxf/controllers/concerns/read_config_file.rb
  ]
  s.files += Dir[
    'lib/pub/**/*.rb',
    'lib/user/**/*.rb',
    'lib/contact/**/*.rb',
    'lib/cxf/helpers/*.rb'
  ]
  s.require_paths = %w[app lib]
  s.add_runtime_dependency 'addressable', '~> 2.7.0', '>= 2.7.0'
  s.add_runtime_dependency 'httparty', '>= 0.18', '< 0.22'
  s.add_runtime_dependency 'json', '>= 1.8.3'
  s.add_runtime_dependency 'rails-reverse-proxy', '~> 0.9.1', '>= 0.9.1'
  s.add_runtime_dependency 'redis', '~> 4.2.2', '>= 4.2.2'
  s.add_runtime_dependency 'concurrent-ruby', '~> 1.2.2'
end

