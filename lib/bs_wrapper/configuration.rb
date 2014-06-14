module BsWrapper
  module Configuration
    BASE_URL = "api.browserstack.com/3"
    USERNAME = "chandankumar11"
    API_KEY = "your-api-key"
    AUTHENTICATED_BASE_URL = "http://#{USERNAME}:#{API_KEY}@#{BASE_URL}"
  end
end
