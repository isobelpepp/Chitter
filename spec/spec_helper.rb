require File.join(File.dirname(__FILE__), '..', 'app.rb')
ENV['ENVIRONMENT'] = 'test'

require 'truncate_database'
require 'simplecov'
require 'simplecov-console'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Chitter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start

RSpec.configure do |config|

  config.before(:each) do
    truncate_database
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
