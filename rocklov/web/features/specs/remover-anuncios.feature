        #language: pt

        Funcionalidade: Remover Anuncios
        Sendo um anunciante que possui um equipamento indesejado
        Quero poder remover esse Anuncios
        Para que eu possa manter o meu Dashboard atualizado

        Contexto: Login
            * Login com "extraT@email.com" e "pwd123"

            
            Cenario: Remover um anuncio

            Dado que eu tenho um anuncio indesejado:
            | thumb     | telecaster.jpg |
            | nome      | Telecaster     |
            | categoria | Cordas         |
            | preco     | 50             |
            Quando eu solicito a esse exclusao desse item
            E confirmo a exclusao
            Entao nao devo ver esse item no meu Dashboard

            @temp
            Cenario: Desistir da exclusao

            Dado que eu tenho um anuncio indesejado:
            | thumb     | conga.jpg |
            | nome      | Conga     |
            | categoria | Outros    |
            | preco     | 100       |
Quando eu solicito a esse exclusao desse item
Mas nao confirmo a solicitacao
Entao esse item deve permanecer no meu Dashboard