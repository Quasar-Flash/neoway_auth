# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "neoway/auth/version"

Gem::Specification.new do |s|
  s.name        = "neoway_auth"
  s.version     = Neoway::Auth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Danilo Carolino"]
  s.email       = ["danilo.carolino@qflash.com.br"]
  s.homepage    = "https://github.com/Quasar-Flash/neoway-auth-ruby"
  s.summary     = "Neoway Auth Library"
  s.description = "A library to use Neoway auth features"
  s.required_ruby_version = ">= 2.5"
  s.files = Dir["{lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["spec/**/*"]
  s.license = "MIT"

  s.metadata["changelog_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby"
  s.metadata["bug_tracker_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby/issues"

  s.add_dependency             "faraday", ">= 1.4", "< 3.0"
  s.add_dependency             "flash_integration", ">= 0.1", "< 2.0"
  s.add_dependency             "i18n", "~> 1.8", ">= 1.0"
  s.add_dependency             "json", "~> 2.5", ">= 2.0"

  s.add_development_dependency "bundler", ">= 1.2"
  s.add_development_dependency "factory_bot", "~> 6.2"
  s.add_development_dependency "fuubar", "~> 2.5"
  s.add_development_dependency "pry", "~> 0.14"
  s.add_development_dependency "rake", "~> 13.0", ">= 10.0.0"
  s.add_development_dependency "rspec", "~> 3.10"
  s.add_development_dependency "rubocop", "~> 1.18"
  s.add_development_dependency "rubocop-packaging", "~> 0.5"
  s.add_development_dependency "rubocop-performance", "~> 1.11"
  s.add_development_dependency "simplecov", "~> 0.21"
end
