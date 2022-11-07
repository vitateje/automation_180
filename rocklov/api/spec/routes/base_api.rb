require "httparty"

class BaseApi
  include HTTParty
  base_uri "https://api.chucknorris.io/jokes/random"
end
