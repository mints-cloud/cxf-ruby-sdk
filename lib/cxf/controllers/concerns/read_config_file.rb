# frozen_string_literal: true

module ReadConfigFile
  extend ActiveSupport::Concern

  included do
    before_action :set_config_variables
  end

  def set_config_variables
    if File.exists?("#{Rails.root}/cxf_config.yml.erb")
      template = ERB.new File.new("#{Rails.root}/cxf_config.yml.erb").read
      config = YAML.safe_load template.result(binding)

      @host = config.dig('cxf', 'host')
      @api_key = config.dig('cxf', 'api_key')
      @debug = !!config.dig('cxf', 'debug')
      @redis_config = config.dig('cxf', 'redis_cache')
      @use_cache = config.dig('cxf', 'redis_cache', 'use_cache')

      if @use_cache
        @redis_server = Redis.new(
          host: config.dig('cxf', 'redis_cache', 'redis_host'),
          port: config.dig('cxf', 'redis_cache', 'redis_port') || 6379,
          db: config.dig('cxf', 'redis_cache', 'redis_db') || 1
        )
      end
    end
  end
end