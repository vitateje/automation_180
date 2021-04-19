require "capybara"
require "capybara/cucumber"
require "faker"
require "mongo"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://127.0.0.1:3000"
    Capybara.default_max_wait_time = 5
end