# This file was generated by the `rails generate rspec:install` command.
require 'simplecov'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'pundit/rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

SimpleCov.start 'rails'
