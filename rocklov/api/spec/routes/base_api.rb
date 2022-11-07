require "httparty"

class BaseApi
  include HTTParty
  base_uri "http://127.0.0.0:3333"
end
