class ApiPost


     def  reqCep_invalido
        url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Post.new(url)
        request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
        request["platform"] = 'intelipost-docs'
        request["platform-version"] = 'v1.0.0'
        request["plugin"] = 'intelipost-plugin'
        request["plugin-version"] = 'v2.0.0'
        request["content-type"] = 'application/json'
        request.body = "{\"origin_zip_code\":\"\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"CN1\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
        @response = http.request(request)

    
     end

     def reqCanaldeVendas_invalido
      url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      
      request = Net::HTTP::Post.new(url)
      request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
      request["platform"] = 'intelipost-docs'
      request["platform-version"] = 'v1.0.0'
      request["plugin"] = 'intelipost-plugin'
      request["plugin-version"] = 'v2.0.0'
      request["content-type"] = 'application/json'
      request.body = "{\"origin_zip_code\":\"8390130\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"CN1\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
      @response = http.request(request)  
     end 
  

     def reqValidar_cotacaodados_validos
      url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      
      request = Net::HTTP::Post.new(url)
      request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
      request["platform"] = 'intelipost-docs'
      request["platform-version"] = 'v1.0.0'
      request["plugin"] = 'intelipost-plugin'
      request["plugin-version"] = 'v2.0.0'
      request["content-type"] = 'application/json'
      request.body = "{\"origin_zip_code\":\"8390130\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendas\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
      @response = http.request(request)
     end 

     def reqCep_espiritoSanto
       url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
   
      request = Net::HTTP::Post.new(url)
      request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
      request["platform"] = 'intelipost-docs'
      request["platform-version"] = 'v1.0.0'
      request["plugin"] = 'intelipost-plugin'
      request["plugin-version"] = 'v2.0.0'
      request["content-type"] = 'application/json'
      request.body = "{\"origin_zip_code\":\"29010120\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendas\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
      @response = http.request(request)
end
def reqCep_Tocantins
   url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
  request["platform"] = 'intelipost-docs'
  request["platform-version"] = 'v1.0.0'
  request["plugin"] = 'intelipost-plugin'
  request["plugin-version"] = 'v2.0.0'
  request["content-type"] = 'application/json'
  request.body = "{\"origin_zip_code\":\"77001054\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendas\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
  @response = http.request(request)
end

def reqCep_MatoGrosso
   url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
  request["platform"] = 'intelipost-docs'
  request["platform-version"] = 'v1.0.0'
  request["plugin"] = 'intelipost-plugin'
  request["plugin-version"] = 'v2.0.0'
  request["content-type"] = 'application/json'
  request.body = "{\"origin_zip_code\":\"78005170\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendasN1\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
  @response = http.request(request)
end

def reqCep_RioGrandedoSuL
   url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
  request["platform"] = 'intelipost-docs'
  request["platform-version"] = 'v1.0.0'
  request["plugin"] = 'intelipost-plugin'
  request["plugin-version"] = 'v2.0.0'
  request["content-type"] = 'application/json'
  request.body = "{\"origin_zip_code\":\"94090720\",\"destination_zip_code\":\"04304011\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendas\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
  @response = http.request(request)
end

def reqOrigem_Para
   url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
  request["platform"] = 'intelipost-docs'
  request["platform-version"] = 'v1.0.0'
  request["plugin"] = 'intelipost-plugin'
  request["plugin-version"] = 'v2.0.0'
  request["content-type"] = 'application/json'
  request.body = "{\"origin_zip_code\":\"94090720\",\"destination_zip_code\":\"66010000\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"CN1\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
  @response = http.request(request)
end

def reqCep_Tocantins_destinoSudeste
   url = URI("https://api.intelipost.com.br/api/v1/quote_by_product")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  request["api-key"] = '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379'
  request["platform"] = 'intelipost-docs'
  request["platform-version"] = 'v1.0.0'
  request["plugin"] = 'intelipost-plugin'
  request["plugin-version"] = 'v2.0.0'
  request["content-type"] = 'application/json'
  request.body = "{\"origin_zip_code\":\"77001054\",\"destination_zip_code\":\"8390130\",\"quoting_mode\":\"DYNAMIC_BOX_ALL_ITEMS\",\"products\":[{\"weight\":5,\"cost_of_goods\":10.7,\"width\":15,\"height\":17.5,\"length\":15,\"quantity\":1,\"sku_id\":\"SKU123\",\"product_category\":\"Bebidas\"},{\"weight\":7,\"cost_of_goods\":20.99,\"width\":20.5,\"height\":30.7,\"length\":20,\"quantity\":1,\"sku_id\":\"SKU456\",\"product_category\":\"Bebidas\"}],\"additional_information\":{\"lead_time_business_days\":1,\"sales_channel\":\"meu_canal_de_vendas\",\"client_type\":\"gold\"},\"identification\":{\"session\":\"04e5bdf7ed15e571c0265c18333b6fdf1434658753\",\"ip\":\"000.000.000.000\",\"page_name\":\"carrinho\",\"url\":\"http://www.intelipost.com.br/checkout/cart/\"}}"
  @response = http.request(request)
end


end


