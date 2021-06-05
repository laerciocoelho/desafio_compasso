Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
  expect(@search_page.products.first).to have_price
end

Quando('buscar por um {string} desconhecido') do |query|
  @home_page.search(query)
end

Então('deve apresentar a {string} sucedido do {string}') do |message, query|
  expect(@search_page.product_quantity_result_message).to have_content "0"
  expect(@search_page.search_alert_warning.text).to have_content message + "\"#{query}\""
end

Quando('buscar sem termo') do
  @home_page.button_search.click()
end

Então('deve apresentar a mensagem {string}') do |message|
  expect(@search_page.search_alert_warning.text).to have_content message
  expect(@search_page.product_quantity_result_message).to have_content "0"
end

Quando('buscar produtos pela cor {string}') do |color|
  @home_page.search(color)
end

Então('devem ser retornados produtos com a cor relacionada') do
  @search_page.products.color_list()
  #puts(@search_page.products.first.product_color_list['href'])
  #expect(@search_page.products.first.product_color_list['href'].first).to include("pink")
end