require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "faker"
require 'webdrivers'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end