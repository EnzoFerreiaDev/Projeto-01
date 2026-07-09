algoritmo "Semaforo"

var
  ciclo, estadoatual, contador: inteiro

inicio
  estadoatual <- 1
  contador <- 5
  ciclo <- 0

  escreval("SISTEMA DE SINAL")

  enquanto (ciclo < 3) faca
    escolha estadoatual
      caso 1
        escreval("VIA A: verde | VIA B: vermelho - Tempo Restante: ", contador)
        escreval()

      caso 2
        escreval("VIA A: amarelo | VIA B: vermelho - Tempo Restante: ", contador)
        escreval()

      caso 3
        escreval("VIA A: vermelho | VIA B: verde - Tempo Restante: ", contador)
        escreval()

      caso 4
        escreval("VIA A: vermelho | VIA B: amarelo - Tempo Restante: ", contador)
        escreval()

      caso 5
        escreval("VIA A: vermelho | VIA B: vermelho - Tempo Restante: ", contador)
        escreval()

    fimescolha

    //Aqui entraria o botao se o prefeito quisesse

    contador <- contador - 1

    se (contador = 0) entao

      se (estadoatual = 5) entao
        estadoatual <- 1
        ciclo <- ciclo + 1
      senao
        estadoatual <- estadoatual + 1
      fimse

      escolha estadoatual
        caso 1
          contador <- 5
        caso 2
          contador <- 4
        caso 3
          contador <- 6
        caso 4
          contador <- 4
        caso 5
          contador <- 2
      fimescolha

    fimse

  fimenquanto
fimalgoritmo
