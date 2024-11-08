# frozen_string_literal: true
require_relative './assets'
require_relative './blocks'
require_relative './block_templates'
require_relative './content_bundles'
require_relative './content_prints'
require_relative './instances'
require_relative './print_versions'
require_relative './templates'
require_relative './bundles'
require_relative './message_templates'
require_relative './prints'

module Content
  include Assets
  include Blocks
  include BlockTemplates
  include ContentBundles
  include ContentPrints
  include Instances
  include PrintVersions
  include Templates
  include Bundles
  include MessageTemplates
  include Prints

  # === Get public images url.
  # Get public images url.
  #
  # ==== Example
  #     @data = @cxf_user.get_public_images_url
  def get_public_images_url
    @client.raw('get', '/content/public-images-url')
  end

  ##
  # == Keywords
  #

  # === Get keywords.
  # Get a collection of keywords.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_keywords
  #
  # ==== Second Example
  #     options = { fields: 'title' }
  #     @data = @cxf_user.get_keywords(options)
  def get_keywords(options = nil)
    @client.raw('get', '/content/keywords', options)
  end

  # === Get keyword.
  # Get a keyword.
  #
  # ==== Parameters
  # id:: (Integer) -- Keyword id.
  #
  def get_keyword(id)
    @client.raw('get', "/content/keywords/#{id}")
  end

  # === Create keyword.
  # Create a keyword with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     data = {
  #       title: 'New Keyword'
  #     }
  #     @data = @cxf_user.create_keyword(data.to_json)
  def create_keyword(data)
    @client.raw('post', '/content/keywords', nil, data)
  end

  # === Update keyword.
  # Update a keyword info.
  #
  # ==== Parameters
  # id:: (Integer) -- Keyword id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #
  def update_keyword(id, data)
    # FIXME: Keyword controller doesnt receive data
    @client.raw('put', "/content/keywords/#{id}", nil, data)
  end

  ##
  # == Stages
  #

  # === Get stages.
  # Get a collection of stages.
  #
  # ==== Parameters
  # options:: (Hash) -- List of Resource Collection Options shown above can be used as parameter.
  #
  # ==== First Example
  #     @data = @cxf_user.get_stages
  #
  # ==== Second Example
  #     options = { fields: 'title' }
  #     @data = @cxf_user.get_stages(options)
  def get_stages(options = nil)
    @client.raw('get', '/content/stages', options)
  end

  # === Get stage.
  # Get a stage.
  #
  # ==== Parameters
  # id:: (Integer) -- Stage id.
  #
  # ==== Example
  #     @data = @cxf_user.get_stage(1)
  def get_stage(id)
    @client.raw('get', "/content/stages/#{id}")
  end

  # === Create stage.
  # Create a stage with data.
  #
  # ==== Parameters
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     config_json = {
  #       count: 1
  #     }
  #     event_json = {
  #       rset: 'DTSTART:20190214T000000Z',
  #       duration: 1
  #     }
  #     data = {
  #       title: 'New Stage',
  #       description: 'New Stage Description',
  #       config_json: config_json.to_json,
  #       event_json: event_json.to_json
  #     }
  #     @data = @cxf_user.create_stage(data.to_json)
  def create_stage(data)
    @client.raw('post', '/content/stages', nil, data)
  end

  # === Update stage.
  # Update a stage info.
  #
  # ==== Parameters
  # id:: (Integer) -- Stage id.
  # data:: (Hash) -- Data to be submitted.
  #
  # ==== Example
  #     config_json = {
  #       count: 2
  #     }
  #     event_json = {
  #       rset: 'DTSTART:20190214T000000Z',
  #       duration: 2
  #     }
  #     data = {
  #       stageProps: {
  #         title: 'New Stage Modified',
  #         description: 'New Stage Description Modified'
  #       },
  #       config_json: config_json.to_json,
  #       event_json: event_json.to_json
  #     }
  #     @data = @cxf_user.update_stage(3, data.to_json)
  def update_stage(id, data)
    # TODO: Inform StageController.update method has been modified
    @client.raw('put', "/content/stages/#{id}", nil, data)
  end
end
