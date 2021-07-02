# frozen_string_literal: true

module Neoway
  module Auth
    class Connection < Flash::Integration::Connection
      def initialize(request_class: Faraday)
        super(request_class: request_class, base_url: retrieve_base_url)
      end

      def default_headers
        {
          "Content-Type": "application/json",
          "Accept": "application/json"
        }
      end

      private
        def retrieve_base_url(base_url = Neoway.configuration&.base_url)
          return base_url if base_url

          Neoway::BASE_URL
        end
    end
  end
end
