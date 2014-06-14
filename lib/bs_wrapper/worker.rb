module BsWrapper
  class Worker
    attr_reader :id, :url, :message, :errors

    # Initialize worker
    def initialize(options={})
      http = Curl.post("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/worker", options)
      response = JSON.parse(http.body_str) rescue {}
      @id = response['id']
      @url = response['url']
      @message = response['message']
      @errors = response['errors']
    end

    # Method to delete worker
    def delete
      response = Curl.delete("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/worker/#{self.id}")
    end

    # Method to get screenshot
    def screenshot(format='')
      id = self.id
      sshot = Curl.get("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/worker/#{id}/screenshot#{format}")
      sshot_url = JSON.parse(sshot.body_str)['url'] rescue " "
      return sshot_url
    end

    # Method to get status of the worker
    def status
      response = Curl.get("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/worker/#{self.id}")
      return JSON.parse response.body_str rescue {}
    end

    # Method to get all workers
    def self.all
      response = Curl.get("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/workers")
      return JSON.parse response.body_str rescue {}
    end
  end
end



