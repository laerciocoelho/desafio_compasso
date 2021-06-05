module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, '.product-price'
    elements :product_color_list, 'a[class="color_pick"]'

    def color_list()
      #array = product_color_list
      puts("TESTE_____________")
      product_color_list.each do |color|
        puts(color.text + "_________")
      end
    end
  end
end
