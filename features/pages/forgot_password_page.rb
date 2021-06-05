module Pages
  class ForgotPasswordPage < SitePrism::Page
    set_url 'index.php?controller=password'

    element :breadcrumb, '.breadcrumb'
    element :alert_message_email_sent, '.alert-success'
    element :input_registered_email, '#email'
    element :btn_retrieve_password, '#form_forgotpassword span'
    element :btn_back_to_login, 'a[title="Back to Login"]'
    
  end
end
