# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require File.expand_path("spec/helper_lite")

require 'rspec/rails'
require 'capybara/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
# RSpec::Core::Configuration.new.tap do |config|
  # config.use_transactional_fixtures = true
  # config.infer_base_class_for_anonymous_controllers = false
  config.include Capybara::DSL
end