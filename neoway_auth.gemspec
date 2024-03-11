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
  s.required_ruby_version = ">= 2.7"
  s.files = Dir["{lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "CHANGELOG.md", ".version"]
  s.test_files = Dir["spec/**/*"]
  s.license = "MIT"

  s.metadata["changelog_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby"
  s.metadata["bug_tracker_uri"] = "https://github.com/Quasar-Flash/neoway-auth-ruby/issues"

  s.add_dependency             "flash_integration", "~> 1.0.0"
  s.add_dependency             "i18n"
  s.add_dependency             "json", "~> 2.5", ">= 2.0"

  s.add_development_dependency "bundler", ">= 1.2"
  s.add_development_dependency "factory_bot", "~> 6.3.0"
  s.add_development_dependency "fuubar", "~> 2.5"
  s.add_development_dependency "pry", "~> 0.14.1"
  s.add_development_dependency "rake", "~> 13.0", ">= 10.0.0"
  s.add_development_dependency "rspec", "~> 3.12.0"
  s.add_development_dependency "rubocop", "~> 1.62.1"
  s.add_development_dependency "rubocop-packaging", "~> 0.5.2"
  s.add_development_dependency "rubocop-performance", "~> 1.19.0"
  s.add_development_dependency "simplecov", "~> 0.22.0"
end
