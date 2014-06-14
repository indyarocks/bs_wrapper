module BsWrapper
  module Browser

    def browsers(version = '', options={})
      http = Curl.get("#{BsWrapper::Configuration::AUTHENTICATED_BASE_URL}/browsers?#{version}=true", options)
      response = JSON.parse(http.body_str) rescue {}
      return response
    end
  end
end