algoritmo "sistema_de_elevador"
var
  Atual, Destino, opcao, i : inteiro
  chamados : vetor[1..20] de inteiro
  totalChamados : inteiro

inicio
  Atual <- 1
  totalChamados <- 0

  repita
    escreval("---------ELEVADOR--------")
    escreval("Andar atual: ", Atual)
    escreval("1 - Chamar elevador")
    escreval("2 - Processar proximo pedido")
    escreval("3 - Sair")
    escreva("Opcao: ")
    leia(opcao)

    se opcao = 1 entao
      escreva("Digite o andar desejado (1 a 10): ")
      leia(Destino)
      se (Destino < 1) ou (Destino > 10) entao
        escreval("Andar invalido!")
      senao
        totalChamados <- totalChamados + 1
        chamados[totalChamados] <- Destino
        escreval("Pedido registrado.")
      fimse

    senao
      se opcao = 2 entao
        se totalChamados = 0 entao
          escreval("Nenhum pedido na fila.")
        senao
          Destino <- chamados[1]

          se Destino > Atual entao
            escreval("Subindo...")
            para i de Atual + 1 ate Destino faca
              escreval("  -> Andar ", i)
            fimpara
          senao
            se Destino < Atual entao
              escreval("Descendo...")
              para i de Atual - 1 ate Destino passo -1 faca
                escreval("  -> Andar ", i)
              fimpara
            senao
              escreval("Ja estava neste andar.")
            fimse
          fimse

          Atual <- Destino
          escreval("Chegou ao andar ", Atual)
          escreval("*Portas abrindo*")

          para i de 1 ate totalChamados - 1 faca
            chamados[i] <- chamados[i + 1]
          fimpara
          totalChamados <- totalChamados - 1
        fimse

      senao
        se opcao = 3 entao
          escreval("Desligando elevador...")
        senao
          escreval("Opcao invalida")
        fimse
      fimse
    fimse

  ate opcao = 3
fimalgoritmo

fimalgoritmo
