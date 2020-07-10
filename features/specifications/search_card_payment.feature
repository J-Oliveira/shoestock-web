#language:pt

@regressivo
Funcionalidade: Buscando, adicionando um produto no carrinho e realizando pagamento
                Para que eu possa buscar, adicionar e efetuar o pagamento
                Sendo um usuário logado
                Posso adicionar vários itens e formas de pagamento diferentes

@produto_especifico
Esquema do Cenário: Realizando uma busca para um produto específico 
         Dado que eu esteja na tela principal
         Quando informo o produto "TÊNIS COURO SHOESTOCK KNIT FEMININO - CINZA"
         E confirmo a busca
         Então é exibido o resultado de busca

@produto_invalido
Esquema do Cenário: Buscando um produto inválido
         Dado que eu esteja na tela principal
         Quando informo o produto invalido "pastel de queijo"
         E confirmo a busca
         Então é exibido uma mensagem "Verifique se você digitou as palavras corretamente ou tente novamente a busca."

@sugestao_produto
Esquema do Cenário: Sugestão de produto de busca
         Dado que eu esteja na tela principal
         Quando busco o produto "bota"
         E confirmo a busca
         Então é exibido diversas sugestões

@adicionando_produto_especifico
Esquema do Cenário: Adicionando no carrinho um produto específico
         Dado que eu seleciono meu produto "bota couro"
         Quando clico no produto 
         E seleciono o "tamanho"
         E clico em "comprar"
         Então meu produto estará em meu carrinho 

@excluindo_produto
Esquema do Cenário: Excluindo um produto do carrinho
         Dado que eu seleciono meu produto "bota couro shoestock"
         Quando clico no produto
         E seleciono o "tamanho"
         E clico em "comprar"
         E clico na "lixeira"
         Então é apresentado a mensagem "Seu carrinho está vazio"

@pagamento_boleto
Esquema do Cenário: Pagamento em boleto bancario
         Dado que meu produto esteja no carrinho
         Quando clico em "continuar"
         E clico em "Concluir pedido"
         Então é apresentado a mensagem "FALTA POUCO! AGORA É SÓ PAGAR O BOLETO"