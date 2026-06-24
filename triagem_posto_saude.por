algoritmo "Triagem Posto de Saude"

var
  nomes: vetor [1..5] de caractere
  numeros: vetor [1..5] de inteiro
  cont, urgencia, i, numero, c: inteiro
  resp, v, nome: caractere

procedimento top ()
  inicio

    cont <- 0
    nome <- ""

    escreval("----------------------")
    escreval("SISTEMA POSTO DE SAUDE")
    escreval("Ola, Seja Bem-Vindo ao sistema!")
    enquanto nome <> "sair" faca
      escreval("Quais sao os nomes do Paciente? (Digite (sair) para finalizar)")
      escreval("Minimo 5 pacientes")
      leia(nome)
      se (nome <> "sair") entao
        cont <- cont + 1
        nomes[cont] <- nome
      fimse
    fimenquanto

    enquanto numero <> 10 faca
      escreval("----------------------")
      escreval("Qual e o Nivel de Atendimento?")
      escreval("{1} Urgercia (Vermelho)")
      escreval("{2} Urgente (Amarelo)")
      escreval("{3} Pouco Urgente (Verde)")
      escreval("escolha as opçoes acima (digite 10 para finalizar)")
      leia(numero)
      se(numero <> 10) entao
        urgencia <- urgencia + 1
        numeros[urgencia] <- numero
      fimse
    fimenquanto


fimprocedimento

inicio

  top()
  limpatela
  escreval("-----------------------")
  escreval("LISTAGEM DE ATENDIMENTO")
  escreval("-----------------------")

  para i de 1 ate cont faca
    escreval("O nivel de Atendimento do ", nomes[i], " e de ", numeros[i])
  fimpara
  escreval

  escreval("Finalizando...")

fimalgoritmo
