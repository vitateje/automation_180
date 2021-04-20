#language: pt

@cad
Funcionalidade: Cadastro

    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    
    Cenario: Submeter cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |nome                       |email            |senha  |
            |Virtrudes Henrique Teixeira|virtrudes@cat.com|lasanha|
        Então sou redirecionado para o Dashboard


    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |nome        |email        |senha        |
            |<nome_input>|<email_input>|<senha_input>|
        Então vejo a mensagem de alerta: "<mensagem_output>"

    Exemplos:
    |nome_input|email_input|senha_input|mensagem_output|
    |                           |virtrudes@cat.com|lasanha|Oops. Informe seu nome completo!|
    |Virtrudes Henrique Teixeira|                 |lasanha|Oops. Informe um email válido!  |
    |Virtrudes Henrique Teixeira|virtrudes@cat    |lasanha|Oops. Informe um email válido!  |
    |Virtrudes Henrique Teixeira|virtrudes@cat.com|       |Oops. Informe sua senha secreta!|
