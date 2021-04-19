#language: pt

Funcionalidade: Login

Sendo um usuário cadastrado
Quero acessar o sistema da Rocklov
Para que eu possa anunciar meus equipamentos musicais

@temp
Cenario: Login do usuário

    Dado que acesso a página principal
    Quando submeto minhas credencias com "virtrudes@cat.com" e "lasanha"
    Então sou redirecionado para o Dashboard

Cenario: Senha incorreta

    Dado que acesso a página principal
    Quando submeto minhas credencias com senha incorreta
    Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

Cenario: Email não cadastrado

    Dado que acesso a página principal
    Quando submeto minhas credencias com email que não existe na Rocklov
    Então vejo a mensagem de alerta: Usuário e/ou senha inválidos. 

Cenario: Email Incorreto

    Dado que acesso a página principal
    Quando submeto minhas credencias com email incorreto
    Então vejo a mensagem de alerta: OOps. Informe um email inválido!

Cenario: Email não informado

    Dado que acesso a página principal
    Quando submeto minhas credencias sem o email
    Então vejo a mensagem de alerta: OOps. Informe um email inválido!

Cenario: Senha não informada

    Dado que acesso a página principal
    Quando submeto minhas credencias sem a senha
    Então vejo a mensagem de alerta: OOps. Informe sua senha secreta!


