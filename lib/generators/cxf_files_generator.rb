# frozen_string_literal: true

class CxfFilesGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))
  include Rails::Generators::Actions

  def create_cxf_files
    copy_file 'cxf_config.yml.erb', 'cxf_config.yml.erb'
    copy_file 'cxf_user_controller.rb', './app/controllers/api/cxf_user_controller.rb'
    copy_file 'cxf_contact_controller.rb', './app/controllers/api/v1/cxf_contact_controller.rb'
    copy_file 'cxf_public_controller.rb', './app/controllers/api/v1/cxf_public_controller.rb'
    copy_file 'cxf_assets_controller.rb', './app/controllers/cxf_assets_controller.rb'

    route <<-eos
        # Cxf auto-generated routes (proxy to send request to cxf.cloud)
        match '/public-assets/*path' => 'cxf_assets#index', via: [:get, :post, :put, :patch, :delete]
        namespace :api, defaults: { format: :json } do
          match '/v1/*path' => 'cxf_user#index', via: [:get, :post, :put, :patch, :delete]
          match '/user/v1/*path' => 'cxf_user#index', via: [:get, :post, :put, :patch, :delete]
          match '/contact/v1/*path' => 'cxf_contact#index', via: [:get, :post, :put, :patch, :delete]  
          namespace :v1 do     
            match '/contacts/*path' => 'cxf_contact#index', via: [:get, :post, :put, :patch, :delete]              
            match '/*path' => 'cxf_public#index', via: [:get, :post, :put, :patch, :delete]
          end
        end
    eos
  end
end