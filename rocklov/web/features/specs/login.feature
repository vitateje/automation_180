#language: pt

@login
Funcionalidade: Login

    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credencias com "virtrudes@cats.com" e "lasanha1"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar Logar

        Dado que acesso a página principal
        Quando submeto minhas credencias com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input       | senha_input | mensagem_output                  |
            | virtrudes@cat.com | peixe       | Usuário e/ou senha inválidos.    |
            | virtrudes@aol.com | lasanha     | Usuário e/ou senha inválidos.    |
            | virtrudes&bol     | peixe       | Oops. Informe um email válido!   |
            |                   | peixe       | Oops. Informe um email válido!   |
            | virtrudes@cat.com |             | Oops. Informe sua senha secreta! |
