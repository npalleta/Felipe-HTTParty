# frozen_string_literal: true ...
# ---
require 'yaml'

class Settings
    # ---
    def self.get_environment_path
        yaml_file_path   = "/config/#{ENVIRONMENT}.yaml"
        environment_path = YAML.load_file(File.dirname(__FILE__) + yaml_file_path)
        return environment_path
    end

    def self.get_url(path)
        return "#{get_environment_path['url']}/#{path}"
    end

    def self.get_felipe_url(path)
        return "#{get_environment_path['felipe']}/#{path}"
    end
end
