
Feature: Cotação Intelipost

Scenario: Validar  retorno de cotação com dados validos 
Given que desejo efetuar a Cotação de um pedido dentro do estado 
 And campo delivery_estimate_business_days deve  exibir Prazo de entrega em dias úteis
 And campo description deve exibir Descrição da forma de envio
 And campo final_shipping_cost deve exibir  Preço de envio
 Then deve retornar 200

Scenario:Validar autenticação Api
Given que desejo efetuar a Cotação e informo chave de segurança invalida 
Then deve retornar codigo 401

Scenario:Validar retorno cotação campo weight invalido
Given que desejo efetuar a Cotação de um pedido dentro do estado weight invalido
Then deve retornar 400 e  mensagem de erro

Scenario: Validar cotação  com CEP invalido
Given que desejo efetuar a Cotação de um pedido dentro do estado de SP
Then deve retornar 400 e  mensagem de erro


Scenario: Validar dados do produto  SKU
Given  que desejo efetuar a Cotação de um pedido de acordo com uma unidade
And campo quantity deve apresentar quantidade de vezes  que produto aparece no carrinho
And campo weight ndicado no produto deve refletir ao peso total em sua embalagem original quilograma
And campo cost_of_goods deve representar o valor do produto
Then deve retornar 200

Scenario: validar cotaçção com origem 1 espirito santo
Given que desejo efetuar a Cotação com orgigem no Espirito Santo
Then deve retornar 200
 
Scenario: Validar cotação com origem Origem 2 Tocantins
Given que desejo efetuar a Cotação de um origem dentro do estado de Tocantins

Scenario: Validar cotação com origemOrigem 3 Mato Grosso
Given que desejo efetuar a Cotação de um origem dentro do estado de Mato Grosso
Then deve retornar 200


Scenario:Validar cotação com Origem 4 Rio Grande do Sul
Given que desejo efetuar a Cotação de um origem dentro do estado dRio Grande do Sul
Then deve retornar 200

Scenario: Validar cotação canais de venda CN1
Given que desejo efetuar a Cotação  e campo sales_channel esteja com valor "CN1" ou "CN2"
Then deve retornar 400 é mensagem Sem opções de entrega viável

Scenario: Validar cotação de frete origem  Tocantins e com  destino esteja localizado na Região Sudeste do País
Given que desejo efetuar a Cotação de um origem do estado de Tocantins com destino região Sudeste
Then deve retornar 400 é mensagem Sem opções de entrega viável
 
Scenario: Validar cotação origem canal de vendas CN123 
Given que origem da cotação seja canal de vendas CN123 e cep esteja entre as faixas  22710-010 e 22710-990
Then deve retornar 200 não deve disponibilizar a opção de entrega Correios PAC
@post
Scenario:Validar prazo de entrega  destino seja o estado do Pará 
Given que desejo efetuar a Cotação de um pedido cujo destino seja o estado do Pará 
Then deve retornar 200 e prazo de entrega esperado é de 20 dias


Scenario:Validar cotação com  com SKU123        
Given que desejo efetuar a Cotação de um pedido SKU (identificador) do produto seja SKU123
Then deve retornar 200 e  não deve disponibilizar a opção de entrega Correios PAC.
