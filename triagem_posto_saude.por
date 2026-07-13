algoritmo "Triagem Posto de Saude"

var
  nomes: vetor [1..5] de caractere
  numeros: vetor [1..5] de inteiro
  cont, i, c, aux: inteiro
  auxNome: caractere

procedimento top ()
  inicio
    cont <- 0

    escreval("----------------------")
    escreval("SISTEMA POSTO DE SAUDE")
    escreval("Ola, Seja Bem-Vindo ao sistema!")

    para i de 1 ate 5 faca
      cont <- cont + 1
      escreval("----------------------")
      escreval("Nome do paciente ", i, ":")
      leia(nomes[i])

      escreval("Qual e o Nivel de Atendimento?")
      escreval("{1} Urgencia (Vermelho)")
      escreval("{2} Urgente (Amarelo)")
      escreval("{3} Pouco Urgente (Verde)")
      leia(numeros[i])
    fimpara
  fimprocedimento

inicio

  top()
  limpatela
  escreval("-----------------------")
  escreval("LISTAGEM DE ATENDIMENTO")

  para i de 1 ate cont - 1 faca
    para c de 1 ate cont - i faca
      se numeros[c] > numeros[c + 1] entao
        aux <- numeros[c]
        numeros[c] <- numeros[c + 1]
        numeros[c + 1] <- aux

        auxNome <- nomes[c]
        nomes[c] <- nomes[c + 1]
        nomes[c + 1] <- auxNome
      fimse
    fimpara
  fimpara

  para i de 1 ate cont faca
    escreval(nomes[i], " - Nivel: ", numeros[i])
  fimpara

  escreval("Finalizando...")

fimalgoritmo
fimalgoritmo
