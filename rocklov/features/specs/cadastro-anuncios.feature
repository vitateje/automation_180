#language: pt

@cad_anuncios
Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para locação

    Contexto: Login
        * Login com "virtrudes@cats.com" e "lasanha1"

    Cenario: Novo equipo

        Dado que acesso o formulario de cadastro de anúncios
            E que eu tenho o sequinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard

    @temp
    Cenario: Anúncio sem foto

        Dado que acesso o formulario de cadastro de anúncios
            E que eu tenho o sequinte equipamento:
            | thumb     |               |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "Adicione uma foto no seu anúncio!"