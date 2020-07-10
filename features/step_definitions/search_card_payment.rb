    Dado('que eu esteja na tela principal') do
        visit 'http://www.shoestock.com.br/'
    end
    
    Quando('informo o produto {string}') do |produto|
        fill_in 'search-input', with: (produto)
    end
    
    Quando('confirmo a busca') do
        find('button[qa-automation="home-search-button"]').click
    end
    
    Então('é exibido o resultado de busca') do
        expect(page).to be
    end

    Quando('informo o produto invalido {string}') do |produto|
        fill_in 'search-input', with: (produto)
    end

    Então('é exibido uma mensagem {string}') do |mensagem|
        expect(page). to have_content @mensagem
    end
    
    Então('é exibido diversas sugestões') do
        expect(page).to be
    end
    
    Quando('busco o produto {string}') do |produto|
        fill_in 'search-input', with: (produto)
    end

    Dado('que eu seleciono meu produto {string}') do |produto|
        @produto
    end
    
    Quando('clico no produto') do
        expect(page). to have_content @produto 
    end
    
    Quando('seleciono o {string}') do |tamanho|
        @tamanho
    end
    
    Quando('clico em {string}') do |botão|
        @botão
    end
    
    Então('meu produto estará em meu carrinho') do
        expect(page). to have_content @produto
    end
    
    Quando('clico na {string}') do |lixeira|
        @lixeira
    end
    
    Então('é apresentado a mensagem {string}') do |mensagem|
        expect(page). to have_content @mensagem
    end
    
    Dado('que meu produto esteja no carrinho') do
        expect(page). to have_content @produto
    end
    

