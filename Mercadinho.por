algoritmo "Mercadinho"

tipo Produto = registro
    nome: caractere
    preco: real
    quantidade: inteiro
fimregistro

var
    produtos: vetor[1..100] de Produto
    totalProdutos: inteiro
    opcao, i, posEncontrada, j, posMaisCaro, posMaisBarato: inteiro
    achou: logico
    busca: caractere
    chave: Produto

inicio
    totalProdutos <- 0

    repita
        escreval("Bem-Vindo ao Mercadinho!")
        escreval("Escolha uma das opcoes abaixo: ")
        escreval("[1] Cadastrar Produto")
        escreval("[2] Listar Produtos")
        escreval("[3] Pesquisar Produto")
        escreval("[4] Ordenar Produtos")
        escreval("[5] Mais Caro")
        escreval("[6] Mais Barato")
        escreval("[7] Sair")
        leia(opcao)
        limpatela
        escolha opcao
            caso 1
               escreval("Digite o nome do produto: ")
               leia(produtos[totalProdutos + 1].nome)

               escreval("Digite o Pre�o do Produto: ")
               leia(produtos[totalProdutos + 1].preco)

               escreval("Digite a Quantidade do Produto: ")
               leia(produtos[totalProdutos + 1].quantidade)

               totalProdutos <- totalProdutos +1

            caso 2
            
               para i de 1 ate totalProdutos faca
               escreval("Nome: ", produtos[i].nome)
               escreval("Preco: ", produtos[i].preco)
               escreval("Quantidade: ", produtos[i].quantidade)
               escreval("---------------------------")
               fimpara

            caso 3
            
                achou <- falso

                escreval("Digite o nome do Produto para Buscar: ")
                leia(busca)

                para i de 1 ate totalProdutos faca
                  se produtos[i].nome = busca entao
                     achou <- verdadeiro
                     posEncontrada <- i
                  fimse
                fimpara

                se achou entao
                  escreval("Produto Encontrado!")
                  escreval("Nome: ", produtos[posEncontrada].nome
                  escreval("Preco: ", produtos[posEncontrada].preco
                  escreval("Quantidade: ", produtos[posEncontrada].quantidade
                senao
                  escreval("Produto nao Encontrado")
                fimse
                
            caso 4
                 para i de 2 ate totalProdutos faca
                   chave <- produtos[i]
                   j <- i - 1

                   enquanto j >= 1 e produtos[j].preco > chave.preco faca
                      produtos[j +1] <- produtos[j]
                      j <- j - 1
                    fimenquanto

                     produtos[j + 1] <- chave
                 fimpara

                 escreval("Produtos Ordenados!")

            caso 5
            
             posMaisCaro <- 1
             
                para i de 2 ate totalProdutos faca
                    se produtos[i].preco > produtos[posMaisCaro].preco entao
                    posMaisCaro <- i
                    fimse
                fimpara
                
                escreval("---Produto Mais Barato---")
                escreval("Nome: ", produtos[posMaisCaro].nome)
                escreval("Preco: ",produtos[posMaisCaro].preco)
                escreval("Quantidade:  ", produtos[posMaisCaro].quantidade)
                escreval("-------------------------------------")

            caso 6
            
              posMaisBarato <- 1
              
                para i de 2 ate totalProdutos faca
                   se produtos[i].preco < produtos[posMaisBarato].preco entao
                   posMaisBarato <- i
                  fimse
                fimpara
                
                escreval("---Produto Msis Barato---")
                escreval("Nome: ", produtos[posMaisBarato].nome)
                escreval("Preco: ", produtos[posMaisBarato].preco)
                escreval("Quantidade: ", produtos[posMaisBarato].quantidade)
                escreval("------------------------------------------")

            caso 7
                escreva("Saindo...")
            outrocaso
                escreva("Op��o inv�lida")
        fimescolha
    at� opcao = 7
Fimalgoritmo
