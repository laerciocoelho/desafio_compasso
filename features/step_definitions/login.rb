Dado('que esteja na tela de login') do
    @login_page.load
end

Quando('logar com usuario e senha validos') do
    @login_page.input_login_email.set("teste20@teenvia.com")
    @login_page.input_login_password.set("123456")
    @login_page.btn_sign_in.click()
end
  
Entao('deve acessar a tela minha conta') do
    expect(page.current_url).to end_with('my-account')
end

Quando('logar com usuario {string} e senha {string}') do |email, pass|
    @login_page.input_login_email.set(email)
    @login_page.input_login_password.set(pass)
    @login_page.btn_sign_in.click()
end
  
Entao('deve exibir a mensagem {string}') do |msg|
    expect(@login_page.alert_message_authentication_failed.text).to have_content msg
end