
Dado('que acesso a página principal') do
    login_page = LoginPage.new
    login_page.open
end
  
Quando('submeto minhas credencias com {string} e {string}') do |email, password|
    login_page = LoginPage.new
    login_page.with(email, password)
end