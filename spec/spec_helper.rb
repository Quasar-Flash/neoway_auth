# frozen_string_literal: true

require "simplecov"

SimpleCov.formatters = [SimpleCov::Formatter::HTMLFormatter]

SimpleCov.start do
  add_filter "/spec/"
  minimum_coverage 50
  minimum_coverage_by_file 30
end

require "neoway_auth"

Dir["./spec/support/**/*.rb"].each { |f| require f }
Dir["./spec/initializers/**/*.rb"].each { |f| require f }

require "bundler"
require "pry"

begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems"

  exit e.status_code
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
