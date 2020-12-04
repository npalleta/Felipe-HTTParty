# frozen_string_literal: true ...
# ---

Dado('que eu acesso a api do Felipe') do
    @felipe_api = FelipeAPI.new
    @felipe_api.request
    @felipe_api.response
end
