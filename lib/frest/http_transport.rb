require "frest/http_transport/version"

module Frest
  module HttpTransport
    def new_transport source:
      Proc.new do |env|
        req = Rack::Request.new(env)

        initial_response = source.call
        response = Frest::Convert.convert from: initial_response, to: 'html'

        [200, {'Content-Type' => 'text/html'}, [response]]
      end
    end

    module_function :new_transport
  end
end
