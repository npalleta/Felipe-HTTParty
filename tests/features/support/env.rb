# frozen_string_literal: true ...

require_relative './api_helper.rb'
require 'report_builder'

World(APIs)

ENVIRONMENT = ENV['ENVIRONMENT']

ReportBuilder.configure do |config|
    config.color            = 'blue'
    config.input_path       = 'results/cucumber_json'
    config.report_path      = 'results/report_builder/report_builder'
    config.report_types     = %i[retry html]
    config.report_title     = 'Report Builder - API Test Results'
    config.additional_info  = { browser: 'None', environment: ENVIRONMENT }
end
  
ReportBuilder.build_report