require 'capybara'
require 'capybara/dsl'
require "capybara/cucumber"

# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end
#
# Capybara.javascript_driver = :chrome
#
# Before do
#   @driver.visit("www.baidu.com")
# end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.run_server = false

World(Capybara)
