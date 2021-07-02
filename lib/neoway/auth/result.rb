# frozen_string_literal: true

module Neoway
  module Auth
    class Result
      attr_accessor :body, :headers, :request, :status, :time

      def initialize(body:, headers:, request:, status:, time:)
        @body    = body
        @headers = headers
        @request = request
        @status  = status
        @time    = time
      end
    end
  end
end
