# frozen_string_literal: true ...
# --

Dado('que eu acesso a api de testes') do
   puts "Iniciando o acesso a API...\n\n"
end

Quando('eu realizo a requisição de signin') do
    my_api.request
end

Então(/^um retorno de status OK deverá acontecer$/) do
    my_api.response
end
