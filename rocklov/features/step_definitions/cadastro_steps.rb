#language: pt

Dado(/^que acesso a página de cadastro$/) do
    visit "http://127.0.0.1:3000/signup"
    sleep 10
end
  
Quando(/^submeto o meu cadastro completo$/) do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então(/^sou redirecionado para o Dashboard$/) do
    pending # Write code here that turns the phrase above into concrete actions
end