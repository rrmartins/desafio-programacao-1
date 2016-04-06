# -*- encoding : utf-8 -*-
RSpec.configure do |config|
  config.after(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end
end