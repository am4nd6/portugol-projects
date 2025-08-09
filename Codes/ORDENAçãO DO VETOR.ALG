Algoritmo "Ordenação do vetor"

Var

   valor: vetor[1..10] de Inteiro
   i, c, troca: Inteiro

Inicio

   Para i <- 1 ate 10 faca
      Escreva("Digite um valor: ")
      Leia(valor[i])
   FimPara

   EscrevaL("********************")
   EscrevaL("  VETOR ORIGINAL:   ")
   EscrevaL("********************")

   Para i <- 1 ate 10 faca
      Escreva("{", valor[i], " }")
   FimPara

   Para i <- 1 ate 9 faca
      Para c <- i+1 ate 10 faca
         Se(valor[i] > valor[c]) entao
            troca <- valor[c]
            valor[c] <- valor[i]
            valor[i] <- troca
         FimSe
      FimPara
   FimPara

   EscrevaL("")
   EscrevaL("********************")
   EscrevaL("  VETOR ORDENADO:   ")
   EscrevaL("********************")

   Para i <- 1 ate 10 faca
      Escreva("{", valor[i], " }")
   FimPara

Fimalgoritmo