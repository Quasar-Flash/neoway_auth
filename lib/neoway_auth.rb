# frozen_string_literal: true

require "faraday"
require "i18n"
require "json"
require "flash_integration"

require "neoway/auth/version"
require "neoway/auth/result"
require "neoway/auth/connection"
require "neoway/auth/authentication"
require "neoway/auth/authenticated_resource"
require "neoway/auth/authenticated_connection"
require "neoway/auth/base_error"
require "neoway/auth/authentication_error"
require "neoway/auth/bad_request_error"
require "neoway/auth/invalid_credentials_error"
require "neoway/auth/server_error"

I18n.load_path += Dir[File.join(__dir__, "locales", "**/*.yml")]
I18n.reload! if I18n.backend.initialized?

module Neoway
  BASE_URL = "https://api.neoway.com.br"

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end
  end

  def self.configure
    self.configuration ||= Configuration.new

    yield(configuration)
  end

  class Configuration
    attr_accessor :application_name, :application_secret, :base_url
  end

  module Auth
    TOKEN_EXPIRATION = 60_000
    AUTH_ENDPOINT    = "auth/token"
  end
end
