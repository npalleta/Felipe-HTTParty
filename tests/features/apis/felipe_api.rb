# frozen_string_literal: true ...
# ---

require 'httparty'

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
        puts @result.body
    end
end
