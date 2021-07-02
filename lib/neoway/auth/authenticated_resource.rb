# frozen_string_literal: true

module Neoway
  module Auth
    class AuthenticatedResource
      def initialize(connection: AuthenticatedConnection.new)
        @connection = connection
      end
    end
  end
end
