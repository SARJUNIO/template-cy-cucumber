#language: pt

Funcionalidade: Busca de produtos no Google
    Como pesquisador de conteúdo
    Quero realizar uma busca no google
    Para ter resultados relevantes com o meu interesse

    Cenário: Busca no google com sucesso
        Dado que eu esteja na tela de busca do Google
        Quando eu realizar a busca do termo "Futebol"
        Então devo receber resultados com a palavra chave "Futebol"

    Cenário: Cenário: Busca no google com termo não encontrado
       Dado que eu esteja na tela de busca do Google
       Quando eu realizar a busca do termo inexistente "125356jljkjllj"
       Então devo receber o alerta "Sua pesquisa não encontrou nenhum documento correspondente"

    Cenário: Resultados da busca com com texto alternativo das imagens
        Dado que eu esteja na tela de busca do Google
        Quando eu realizar a busca do termo com imagem
        Então devo receber resultados com imagens e textos alternativos

    Esquema do Cenário: Busca no google em massa
        Dado que eu esteja na tela de busca do Google
        Quando eu realizar a busca do <termo>
        Então devo receber resultados com a <palavra-chave>

        Exemplos:
            | termo             | palavra-chave                 |
            | "bdd"             | "Behavior Driven Development" |
            | "desenvolvimento" | "desenvolvimento"             |
            | "agile"           | "agile"                       |