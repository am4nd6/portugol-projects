Algoritmo "Conversor de moedas aprimorado (REAIS E DOLÁRES)"

Var

   reais, dolares: real
   resposta: inteiro
   msg: caractere

Inicio

          msg <- "   AGRADECEMOS POR CONFIAR NO NOSSO TRABALHO!"

          Escreval("-------------------------------------------------")
          Escreval("    BEM-VINDO(A) AO NOSSO CONVERSOR DE MOEDAS")
          Escreval("-------------------------------------------------")
          Escreval("[1] PARA CONVERTER DOLÁRES PARA REAIS")
          Escreval("[2] PARA CONVERTER REAIS PARA DOLÁRES")
          Escreval("[3] PARA CANCELAR")
          Leia(resposta)

          Escolha resposta

          Caso 1

             Escreva("Quantos doláres para converter? $")
             Leia(dolares)
             reais <- (dolares*5.2)
             Escreval("Você terá R$", reais:6:2)

          Caso 2

             Escreva("Quantos reais para converter? R$")
             Leia(reais)
             dolares <- (reais/5.2)
             Escreval("Você terá $", dolares:6:2)
             
          Caso 3
          
             msg <- "            CANCELAMENTO CONCLUÍDO!"

          OutroCaso

            msg <- "       RESPOSTA INVÁLIDA! TENTE NOVAMENTE"

          FimEscolha

          Escreval("------------------------------------------------")
          EscrevaL(msg)
          Escreval("------------------------------------------------")

Fimalgoritmo