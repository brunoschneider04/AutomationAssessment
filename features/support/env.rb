require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

ENVIRONMENT = ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/envs/#{ENVIRONMENT}.yaml")

World(Pages)
World(Helper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['base_url']
  config.default_max_wait_time = 10 #set high because the base url is taking a bit long to load
end

Capybara.page.current_window.resize_to(1920, 1080)
