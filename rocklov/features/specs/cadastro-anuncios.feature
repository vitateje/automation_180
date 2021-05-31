#language: pt

@cad_anuncios
Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para locação

    Cenario: Novo equipo

        Dado que eu estou logado como "virtrudes@cats.com" e "lasanha1"
        E que acesso o formulario de cadastro de anúncios
        E que eu tenho o sequinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard
