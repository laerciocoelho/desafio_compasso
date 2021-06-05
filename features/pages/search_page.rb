require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'

    element :search_alert_warning, '.alert-warning'
    element :product_quantity_result_message, '.heading-counter'
  end
end
