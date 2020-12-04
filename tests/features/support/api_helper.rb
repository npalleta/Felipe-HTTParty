# frozen_string_literal: true ...
# ---

Dir[File.join(File.dirname(__FILE__), '../apis/*.rb')].each { |f| require f }

Dir[File.join(File.dirname(__FILE__), '../apis/*.rb')].select{ |f| File.file? f }.map{ |f| puts File.basename f }

module APIs
    #---
    def my_api
        @my_api ||= MyAPI.new
    end

    def felipe_api
        @felipe_api ||= FelipeAPI.new
    end
end
