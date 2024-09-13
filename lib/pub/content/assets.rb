# frozen_string_literal: true

module PublicAssets
  ##
  # === Get Asset Info.
  # Get a description of an Asset.
  #
  # ==== Parameters
  # slug:: (String) -- It's the string identifier of the asset.
  #
  # ==== Example
  #     @data = @cxf_pub.get_asset_info("asset_slug")
  def get_public_asset(slug)
    @client.raw('get', "public-assets/#{slug}", nil, nil, '/')
  end
end
