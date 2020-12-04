# frozen_string_literal: true ...
# ---

require 'httparty'
require 'rspec'

class FelipeAPI
    include RSpec::Matchers

    def request

        puts Settings.get_felipe_url('main/upstream')

        @result = HTTParty.get Settings.get_felipe_url('main/upstream'),
            :headers => {
                'Content-Type' => 'application/json'
            }
    end

    def response
        expect(@result.code).to eql(200)
        # ---
        puts "\nBody: #{@result.body}"
        puts "\nStatus: #{@result.code} - #{@result.message}"
        puts "\nHeaders: #{@result.headers.inspect}"
    end
end
