Before do
  puts 'Aqui executa antes!'
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @account_creation_page = Pages::AccountCreationPage.new
  @forgot_password_page = Pages::ForgotPasswordPage.new
  @my_account_page = Pages::MyAccountPage.new
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  attach(screenshot, "image/png")
end