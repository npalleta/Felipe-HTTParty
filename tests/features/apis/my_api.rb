# frozen_string_literal: true ...
# ---

require 'httparty'

class MyAPI
    include RSpec::Matchers

    def request
        @body = {
            'username':  'mod',
            'password':  '12345678'
        }.to_json

        @result = HTTParty.post Settings.get_url('api/auth/signin'), :body => @body,
            :headers => {
                'Content-Type' => 'application/json'
            }
    end

    def response
        expect(@result.code).to eql(200)
        expect(JSON.parse(@body)['username']).to eql(@result.parsed_response['username'])
        # ---
        puts @result.body
    end
end
