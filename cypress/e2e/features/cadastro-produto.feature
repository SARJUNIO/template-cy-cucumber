            #language: pt

            @critico @produto
            Funcionalidade: Cadastro de produtos
            Eu como admin do sistema serverest
            Quero cadastrar produtos
            Para ter um estoque

            @critico @produto
            Cenário: Cadastro de produtos com sucesso
            Dado que esteja na tela de cadastro de produtos
            Quando eu inserir <nome>, <preco>, <descricao>, <quantidade>
            Então deve validar o <nome> do produto na lista

            Exemplos:
            | nome          | preco | descricao              | quantidade |
            | "Produto 100" | 100   | "Descrição do produto" | 10         |
            | "Produto 200" | 200   | "Descrição do produto" | 20         |
            | "Produto 300" | 300   | "Descrição do produto" | 30         |