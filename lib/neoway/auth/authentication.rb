# frozen_string_literal: true

module Neoway
  module Auth
    class Authentication
      def initialize(connection: Connection.new,
                     application_name: Neoway.configuration.application_name,
                     application_secret: Neoway.configuration.application_secret)
        @application_name   = application_name
        @application_secret = application_secret
        @connection         = connection
      end

      def login(body: login_body)
        res = @connection.post(url: Neoway::Auth::AUTH_ENDPOINT, body: body)

        return parse_result(res) if res.status == 200

        raise_error_by_status(res.status)
      end

      private
        def login_body
          raise Neoway::Auth::InvalidCredentialsError if @application_name.nil? || @application_secret.nil?

          {
            application:        @application_name,
            application_secret: @application_secret
          }.to_json
        end

        def parse_result(res)
          Neoway::Auth::Result.new(
            body:    res.body,
            headers: res.headers,
            request: res.request,
            status:  res.status,
            time:    res.time)
        end

        def raise_error_by_status(status)
          case status.to_i
          when 400
            raise Neoway::Auth::BadRequestError
          when 401
            raise Neoway::Auth::InvalidCredentialsError
          when 500
            raise Neoway::Auth::ServerError
          else
            raise Neoway::Auth::UnexpectedError
          end
        end
    end
  end
end
