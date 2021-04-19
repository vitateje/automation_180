
Dado('que acesso a página principal') do
    visit "http://127.0.0.1:3000"
end
  
Quando('submeto minhas credencias com {string} e {string}') do |email, password|
    find("input[placeholder='Seu e-email']").set email
    find("input[type=password]").set password

    click_button "Entrar"
end