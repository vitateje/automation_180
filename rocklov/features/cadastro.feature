#language: pt

Funcionalidade: Cadastro

    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    @cad
    Cenario: Submeter cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |nome                       |email            |senha  |
            |Virtrudes Henrique Teixeira|virtrudes@cat.com|lasanha|
        Então sou redirecionado para o Dashboard

    @temp
    Cenario: Submeter cadastro sem o nome

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

    @temp
    Cenario: Submeter cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @temp
    Cenario: Submeter cadastro com email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com o email incorreto
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @temp
    Cenario: Submeter cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"