# frozen_string_literal: true

module Docs
  def generate_docs(data)
    @client.raw('post', '/config/docs/generate', nil, data_transform(data))
  end

  def get_doc_jobs
    @client.raw('get', '/config/docs/jobs')
  end
end
