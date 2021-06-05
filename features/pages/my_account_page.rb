module Pages
    class MyAccountPage < SitePrism::Page
      set_url '/index.php?controller=my-account'
  
      element  :breadcrumb, '.breadcrumb .navigation_page'
      element  :btn_logout, '.logout'
      element  :my_account_page_title, '#center_column .page-heading'
      element  :btn_oders_history_details, 'a[title="Orders"]'
      element  :btn_credit_slips, 'a[title="Credit slips"]'
      element  :btn_addresses, 'a[title="Addresses"]'
      element  :btn_information, 'a[title="Information"]'
      element  :btn_wishlist, 'a[title="My wishlists"]'
      element  :btn_home, 'a[title="Home"]'    
    end
  end