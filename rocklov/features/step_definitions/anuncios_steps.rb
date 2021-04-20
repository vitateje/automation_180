Dado('que eu estou logado como {string} e {string}') do |email, password|
    visit "/"
    find("input[placeholder='Seu e-email']").set email
    find("input[type=password]").set password

    click_button "Entrar"
end
  
Dado('que acesso o formulario de cadastro de anúncios') do
    click_button "Criar anúncio"
    #checkpoint
    expect(page).to have_css "#equipoForm"
end

Dado('que eu tenho o sequinte equipamento:') do |table|
    @anuncio = table.rows_hash
    log @anuncio

    # input[placeholder="String"]
    # input[placeholder$=equipamento] pega seletor que tenha equipamento como ultima palavra
    # * contem
    # ^ pega a o que começa com equipamento
    # @ variavel global
end
 
Quando('submeto o cadastro desse item') do

    thumb =  Dir.pwd + "/features/support/fixtures/images/" + @anuncio[:thumb]
    find("#thumbnail input[type=file]", visible:false).set thumb
    find("input[placeholder$=equipamento]").set @anuncio[:nome]
    find("#category").find("option", text: @anuncio[:categoria]).select_option
    find("input[placeholder^=Valor").set @anuncio[:preco]

    click_button "Cadastrar"

    sleep(10)
 end
  
Então('devo ver esse item no meu Dashboard') do
    anuncios = find(".equipo-list")
    expect(anuncios).to have_content @anuncio[:nome]
    expect(anuncios).to have_content "R$#{@anuncio[:preco]}/dia"
end