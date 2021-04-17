#language: pt

Dado(/^que acesso a página de cadastro$/) do
    visit "http://127.0.0.1:3000/signup"
    sleep 0.5
end
  
Quando(/^submeto o meu cadastro completo$/) do

    MongoDB.new.remove_user("virtrudes@cat.com")

    find("#fullName").set "Virtrudes Henrique Teixeira"
    find("#email").set "virtrudes@cat.com"
    find("#password").set "lasanha"

    sleep 2

    click_button "Cadastrar"
end
  
Então(/^sou redirecionado para o Dashboard$/) do
    expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do
    find("#fullName").set ""
    find("#email").set Faker::Internet.free_email
    find("#password").set "lasanha"

    sleep 2

    click_button "Cadastrar"
end


Quando('submeto o meu cadastro sem o email') do
    find("#fullName").set "Virtrudes"
    find("#password").set "lasanha"

    sleep 2

    click_button "Cadastrar"
end


Quando('submeto o meu cadastro com o email incorreto') do
    find("#fullName").set "Virtrudes"
    find("#email").set "teste@"
    find("#password").set "lasanha"

    sleep 2

    click_button "Cadastrar"
end

Quando('submeto o meu cadastro sem a senha') do
    find("#fullName").set "Virtrudes"
    find("#email").set Faker::Internet.free_email

    sleep 2

    click_button "Cadastrar"
end


Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(alert.text).to eql expect_alert
end
