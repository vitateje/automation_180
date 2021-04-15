require "capybara"
require "capybara/cucumber"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    Capybara.default_max_wait_time = 5
end