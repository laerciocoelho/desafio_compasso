Quando('cadastrar com email {string} e dados validos') do |email|
    @login_page.input_create_account_email.set(email)
    @login_page.btn_create_an_account.click()
    @account_creation_page.fill_register_form()
end
  
Entao('deve seguir para tela de conta do usuario') do
    expect(page.current_url).to end_with('my-account')
end

Dado('que um email {string} foi previamente cadastrado') do |email|
    @login_page.input_create_account_email.set(email)
    @login_page.btn_create_an_account.click()
    @account_creation_page.fill_register_form()
    @registered_email = email
    @login_page.load
end
  
Quando('tentar cadastrar o mesmo email') do
    @my_account_page.btn_logout.click()
    @login_page.input_create_account_email.set(@registered_email)
    @login_page.btn_create_an_account.click()
end
  
Entao('deve exibir a mensagem de email já cadastrado') do
    expect(@login_page.alert_message_register_failed).to have_content "An account using this email address has already been registered. Please enter a valid password or request a new one."
end