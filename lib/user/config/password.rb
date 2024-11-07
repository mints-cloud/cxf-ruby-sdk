# frozen_string_literal: true

module Password
  def update_password(type,data)
    @client.raw('post', "/config/#{type}/password/update", nil, data_transform(data))
  end
end
