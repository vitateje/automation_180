Dado("Login com {string} e {string}") do |email, password|
  # @ variavel global
  @email = email

  @login_page.open
  @login_page.with(email, password)

  # checkpoint Dashboard
  expect(@dash_page.on_dash?).to be true
end

Dado("que eu estou logado como {string} e {string}") do |email, password|
end

Dado("que acesso o formulario de cadastro de anúncios") do
  @dash_page.goto_equipo_form
  #checkpoint
  expect(page).to have_css "#equipoForm"
end

Dado("que eu tenho o sequinte equipamento:") do |table|
  @anuncio = table.rows_hash

  MongoDB.new.remove_equipo(@anuncio[:nome], @email)
end

Quando("submeto o cadastro desse item") do
  @equipos_page.create(@anuncio)
end

Então("devo ver esse item no meu Dashboard") do
  expect(@dash_page.equipo_list).to have_content @anuncio[:nome]
  expect(@dash_page.equipo_list).to have_content "R$#{@anuncio[:preco]}/dia"
end

Então("deve conter a mensagem de alerta: {string}") do |expect_alert|
  expect(@alert.dark).to have_text expect_alert
end

# Remover anuncios

Dado('que eu tenho um anuncio indesejado:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  user_id = page.execute_script("return localStorage.getItem('user')")
  log user_id

  thumbnail = File.open(File.join(Dir.pwd, "features/support/fixtures/images", table.rows_hash[:thumb]), "rb")

  equipo = {
    thumbnail: thumbnail,
    name: table.rows_hash[:nome],
    category: table.rows_hash[:categoria],
    price: table.rows_hash[:preco],

  }


  EquiposService.new.create(equipo, user_id)
end

Quando('eu solicito a esse exclusao desse item') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('confirmo a exclusao') do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao('nao devo ver esse item no meu Dashboard') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('nao confirmo a solicitacao') do
  pending # Write code here that turns the phrase above into concrete actions
end