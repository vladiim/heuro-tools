# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require File.expand_path("spec/helper_lite")

require 'rspec/rails'
require 'capybara/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

config = RSpec::Core::Configuration.new
config.include Capybara::DSL

# RSpec.configure do |config|

#   # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
#   # config.fixture_path = "#{::Rails.root}/spec/fixtures"

#   # If you're not using ActiveRecord, or you'd prefer not to run each of your
#   # examples within a transaction, remove the following line or assign false
#   # instead of true.
#   config.use_transactional_fixtures = true

#   # If true, the base class of anonymous controllers will be inferred
#   # automatically. This will be the default behavior in future versions of
#   # rspec-rails.
#   config.infer_base_class_for_anonymous_controllers = false

#   config.include Capybara::DSL
# end

# IMPORTANT! Some of the defaults have changed in Capybara 2.1. If you're experiencing failures,
# please revert to the old behaviour by setting:

#     Capybara.configure do |config|
#       config.match = :one
#       config.exact_options = true
#       config.ignore_hidden_elements = true
#       config.visible_text_only = true
#     end

# If you're migrating from Capybara 1.x, try:

#     Capybara.configure do |config|
#       config.match = :prefer_exact
#       config.ignore_hidden_elements = false
#     end