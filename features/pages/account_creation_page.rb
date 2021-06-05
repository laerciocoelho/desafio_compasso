module Pages
    class AccountCreationPage < SitePrism::Page
        element  :page_title, '.page-heading'


        element  :rad_btn_male, '#id_gender1'
        element  :rad_btn_female, '#id_gender2'
        element  :input_customer_firstname, '#customer_firstname'
        element  :input_customer_lastname, '#customer_lastname'
        element  :input_customer_email, '#email'
        element  :input_customer_pass, '#passwd'
        elements  :select_customer_birth_day, '#days option'
        element  :select_customer_birth_month, '#months'
        elements  :select_customer_birth_year, '#years option'
        element  :check_newsletter, '#newsletter'
        element  :check_receive_offers, '#optin'
        element  :input_address_costumer_firstname, '#firstname'
        element  :input_address_costumer_lastname, '#lastname'
        element  :input_address_costumer_company, '#company'
        element  :input_address_costumer_address1, '#address1'
        element  :input_address_costumer_address2, '#address2'
        element  :input_address_costumer_city, '#city'
        elements  :select_address_costumer_state, '#id_state option'
        element  :input_address_costumer_zipcode, '#postcode'
        elements  :select_address_costumer_country, '#id_country option'
        element  :input_address_costumer_additiona_info, '#other'
        element  :input_address_costumer_phone, '#phone'
        element  :input_address_costumer_phone_mobile, '#phone_mobile'
        element  :input_costumer_addres_alias, '#alias'
        element  :btn_submit_register_form, '#submitAccount'
  
        def fill_register_form()
            #sleep(10)
            #page.wait_until_rad_btn_male_visible
            page.has_selector?("#id_gender1", wait: 10)
            rad_btn_male.click()
            input_customer_firstname.set 'Laercio'
            input_customer_lastname.set 'Souza'
            input_customer_pass.set '123456'
            select_customer_birth_day[8].select_option
            select 'April', from: 'months'
            select_customer_birth_year[30].select_option
            check_newsletter.set(true)
            check_receive_offers.set(true)
            input_address_costumer_company.set 'Compasso'
            input_address_costumer_address1.set 'Rua Politeama de Baixo, 313'
            input_address_costumer_address2.set '1 andar'
            input_address_costumer_city.set 'Salvador'
            select 'Alaska', from: 'id_state'
            input_address_costumer_zipcode.set '12345'
            input_address_costumer_additiona_info.set 'Informacao adicional'
            input_address_costumer_phone.set '7133295050'
            input_address_costumer_phone_mobile.set '71991515665'
            input_costumer_addres_alias.set 'Casa'
            btn_submit_register_form.click()
        end
    end  
end