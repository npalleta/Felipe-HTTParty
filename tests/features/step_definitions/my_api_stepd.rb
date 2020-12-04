# frozen_string_literal: true ...
# ---

Dado('que eu acesso a api de testes') do
    @my_api = MyAPI.new
end

Quando('eu realizo a requisição de signin') do
    @my_api.request
end

Então('um retorno de realizado deverá acontecer') do
    @my_api.response
end
