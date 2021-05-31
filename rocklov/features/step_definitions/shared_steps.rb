#language: pt

Então('sou redirecionado para o Dashboard') do
    expect(@dash_page.on_dash?).to be true
end


Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    expect(@login_page.alert_dark).to eql expect_alert
end