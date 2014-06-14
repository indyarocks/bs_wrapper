require "bs_wrapper/version"
require "bs_wrapper/configuration"
require "bs_wrapper/worker"
require "bs_wrapper/browser"
require 'curb'
require 'json'


module BsWrapper
  extend Configuration


  def self.create_worker(params)
    worker = Worker.new(params)
  end

  def self.all_workers
    Worker.all
  end

  def api_status
    http = Curl.get("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/status")
    response = JSON.parse(http.body_str) rescue {}
    return response
  end


  def get_browsers(params)
    browsers = Browser.browsers(params[:version], params)
  end

end
