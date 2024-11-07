# frozen_string_literal: true

module Seeds
  def process_seed(data)
    @client.raw('post', "/config/seeds", nil, data_transform(data))
  end

  def get_seed_process_status(id)
    @client.raw('get', "/config/seeds/jobs/#{id}")
  end
end
