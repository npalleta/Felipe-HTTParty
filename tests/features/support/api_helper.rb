# frozen_string_literal: true ...
# ---

Dir[File.join(File.dirname(__FILE__), '../apis/*.rb')].each { |file| require file }

module APIs
    def my_api
        @my_api ||= MyAPI.new
    end
end
