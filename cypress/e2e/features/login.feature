            #language: pt
            Funcionalidade: Login

            Contexto:
            Dado que eu esteja na tela de login do serverest
           
            @critico
            Cenário: Deve fazer login com sucesso
            Quando eu inserir email e senha corretamente
            Então deve direcionar para o dashboard

            @medio @smoke
            Cenário: Deve fazer login com sucesso usando exemplo de dados
            Quando eu inserir email: "teste@capgemini.com" e senha : "1234"
            Então deve direcionar para o dashboard

            @baixo
            Cenário: Deve validar erro ao fazer login com usuário ou senha invalidos
            Quando eu inserir email: "qqqqq@capgemini.com" e senha : "qqq1234"
            Então deve exibir uma mensagem de erro

            @medio
            Esquema do Cenário: Deve fazer login com sucesso usando tabela
            Quando eu inserir <email> e <senha>
            Então deve direcionar para o dashboard

            Exemplos:
            | email                    | senha      |
            | "teste@capgemini.com"    | "1234"     |
            | "abelrosenbaum@test.com" | "Test;123" |
            | "gsyu@emailteste.com"    | "teste"    |
