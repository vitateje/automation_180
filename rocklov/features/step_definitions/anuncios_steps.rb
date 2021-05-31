
Dado('Login com {string} e {string}') do |email, password|
    # @ variavel global
    @email = email

    @login_page.open
    @login_page.with(email, password)
end

Dado('que eu estou logado como {string} e {string}') do |email, password|

end
  
Dado('que acesso o formulario de cadastro de anúncios') do
    @dash_page.goto_equipo_form
    #checkpoint
    expect(page).to have_css "#equipoForm"
end

Dado('que eu tenho o sequinte equipamento:') do |table|
    
    @anuncio = table.rows_hash

    MongoDB.new.remove_equipo(@anuncio[:nome], @email)
end

Quando('submeto o cadastro desse item') do
    @equipos_page.create(@anuncio)
 end
  
Então('devo ver esse item no meu Dashboard') do
    expect(@dash_page.equipo_list).to have_content @anuncio[:nome]
    expect(@dash_page.equipo_list).to have_content "R$#{@anuncio[:preco]}/dia"
end