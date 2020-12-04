# language: pt
# utf-8

Funcionalidade: Validar api de signin

    - Eu, como testador, irei realizar
    um signin em uma API... 

@api
Cenário: Validar o signin
    Dado que eu acesso a api de testes
    Quando eu realizo a requisição de signin
    Então um retorno de status OK deverá acontecer
