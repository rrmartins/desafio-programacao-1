# -*- encoding : utf-8 -*-
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'
require 'capybara/rails'
require 'pry'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  OmniAuth.config.test_mode = true

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.render_views
  config.include FactoryGirl::Syntax::Methods
  config.infer_base_class_for_anonymous_controllers = false
  config.raise_errors_for_deprecations!
end

Object.send(:remove_const, :Balance)