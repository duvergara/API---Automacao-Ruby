apipost = ApiPost.new

Given("que desejo efetuar a Cotação de um pedido dentro do estado") do
     @response = apipost.reqValidar_cotacaodados_validos
     @response.body = JSON(@response.body)  
end

  Given("campo delivery_estimate_business_days deve  exibir Prazo de entrega \(em dias úteis)") do
    puts @response.body["content"]["delivery_options"][0]["delivery_estimate_business_days"]
    expect(@response.body["content"]["delivery_options"][0]["delivery_estimate_business_days"]).to eq  4
  end

 
  Given("campo description deve exibir Descrição da forma de envio") do
    puts @response.body["content"]["delivery_options"][0]["description"]
    expect(@response.body["content"]["delivery_options"][0]["description"]).to eq "Total"
  end
  
  Given("campo final_shipping_cost deve exibir  Preço de envio") do
    puts @response.body["content"]["delivery_options"][0]["final_shipping_cost"]
    expect(@response.body["content"]["delivery_options"][0]["final_shipping_cost"]).to eq 17.31
  end
  
  Then("deve retornar 200") do
    expect(@response.code).to eq "200"
    puts "Código de retorno é #{@response.code}"
    expect(@response.message).to eq "OK" 
 end

 Given("que desejo efetuar a Cotação de um pedido dentro do estado de SP") do
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
  
  Then("deve retornar {int} e  mensagem de erro") do |msg|  
    expect(@response.code).to eq "400"
    puts "Código de retorno é #{@response.code}"
    expect(@response.message).to eq "Bad Request"
  end

  Given("que desejo efetuar a Cotação de um pedido de acordo com uma unidade") do
    @response = apipost.reqValidar_cotacaodados_validos
    @response.body = JSON(@response.body)
  end
  
  Given("campo quantity deve apresentar quantidade de vezes  que produto aparece no carrinho") do
    puts @response.body["content"]["volumes"][0]["quantity_of_items"]
    expect(@response.body["content"]["volumes"][0]["quantity_of_items"]).to eql 2
  end
  
  Given("campo weight ndicado no produto deve refletir ao peso total em sua embalagem original \(quilograma)") do
    puts @response.body["content"]["volumes"][0]["weight"]
    expect(@response.body["content"]["volumes"][0]["weight"]).to eql 12.0
  end
  
  Given("campo cost_of_goods deve representar o valor do produto") do
    puts @response.body["content"]["volumes"][0]["cost_of_goods"]
    expect(@response.body["content"]["volumes"][0]["cost_of_goods"]).to eql 31.69
  end

  Given("que desejo efetuar a Cotação com orgigem no Espirito Santo") do
   @response = apipost.reqCep_espiritoSanto
    @response.body = JSON(@response.body)
  end

  Given("que desejo efetuar a Cotação de um origem dentro do estado de Tocantins") do
    @response = apipost.reqCep_Tocantins
    @response.body = JSON(@response.body)
  end
  Given("que desejo efetuar a Cotação de um origem dentro do estado de Mato Grosso") do
    @response = apipost.reqCep_MatoGrosso
    @response.body = JSON(@response.body)
  end

  Given("que desejo efetuar a Cotação de um origem dentro do estado dRio Grande do Sul") do
   @response = apipost.reqCep_RioGrandedoSuL
    @response.body = JSON(@response.body)
  end

  Given("que desejo efetuar a Cotação  e campo sales_channel esteja com valor {string} ou {string}") do |cn1,cn2 |
    @response = apipost.reqCanaldeVendas_invalido
    @response.body = JSON(@response.body)
   
  end

  Then("deve retornar {int} é mensagem Sem opções de entrega viável") do |msg|
    expect(@response.code).to eq "400"
    puts "Código de retorno é #{@response.code}"
    expect(@response.message).to eq "Bad Request"
  end

  Given("que desejo efetuar a Cotação de um origem do estado de Tocantins com destino região Sudeste") do
    @response = apipost.reqCep_Tocantins_destinoSudeste
    @response.body = JSON(@response.body)
  end

  