# language: pt

Funcionalidade: Cadastro

    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    @temp
    Cenario: Submeter cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Então sou redirecionado para o Dashboard

    Cenario: Submeter cadastro sem o nome

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: OOps. Informe seu nome completo!

    Cenario: Submeter cadastro sem o email

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: OOps. Informe um email válido!  

    Cenario: Submeter cadastro com email incorreto

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: OOps. Informe um email válido!

    Cenario: Submeter cadastro sem a senha

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: OOps. Informe sua senha secreta!