Dado('que esteja na tela de recuperar senha') do
    @forgot_password_page.load
end
  
Quando('recuperar a senha para o {string} válido') do |email|
    @forgot_password_page.input_registered_email.set(email)
    @forgot_password_page.btn_retrieve_password.click()
end
  
Entao('deve exibir uma {string} de sucesso, sucedido do {string}') do |msg, email|
    expect(@forgot_password_page.text).to have_content "#{msg} #{email}"
end

Quando('recuperar a senha com o {string} invalido') do |email|
    @forgot_password_page.input_registered_email.set(email)
    @forgot_password_page.btn_retrieve_password.click()
end
  
Entao('deve exibir a mensagem de erro {string}') do |msg|
    expect(@forgot_password_page.text).to have_content msg
end

Dado('que o limite de caracteres para o campo email é {int}') do |char_limit|
    @char_limit = char_limit
end
    
Quando('preencher o campo com {string} maior que o limite') do  |text|
    @forgot_password_page.input_registered_email.set(text)
end
    
Entao('o campo deve conter a quantidade limite de caracteres') do
    expect(@forgot_password_page.input_registered_email.value.size).to eq(@char_limit)
end

Quando('voltar para tela de login') do
    @forgot_password_page.btn_back_to_login.click()
end
  
Entao('a tela de login deve ser exibida') do
    expect(@login_page.current_url).to end_with('authentication')
end