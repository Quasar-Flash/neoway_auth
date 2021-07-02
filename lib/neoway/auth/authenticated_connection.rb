# frozen_string_literal: true

module Neoway
  module Auth
    class AuthenticatedConnection < Connection
      COOKIE_CACHE_KEY = "NEOWAY_AUTHENTICATION_COOKIE_CACHE_KEY"

      def initialize(authentication: Neoway::Auth::Authentication.new, cache: default_cache)
        super(request_class: request_class, base_url: base_url)

        @authentication = authentication
        @cache = cache
        @expiration_time = Neoway::Auth::TOKEN_EXPIRATION.seconds
      end

      def default_headers
        super.merge(Authorization: (@cache ? cached_token : auth_token))
      end

      private
        def auth_token
          response = @authentication.login

          extract_token(response.body)
        end

        def cached_token
          @cache.fetch(COOKIE_CACHE_KEY, expires_in: @expiration_time) { auth_token }
        end

        def default_cache
          defined?(Rails) ? Rails.cache : nil
        end

        def extract_token(value)
          raise Neoway::Auth::AuthenticationError unless value

          value_json = JSON.parse(value)

          "Bearer #{value_json['token']}"
        end
    end
  end
end
