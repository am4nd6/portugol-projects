Algoritmo "Preencher uma matriz 3x2"

Var

   m: vetor[1..3, 1..2] de Inteiro
   l, c: Inteiro

Inicio

   Para l <- 1 ate 3 faca
      Para c <- 1 ate 2 faca
         Escreva("Digite o valor da posição [", l, ",", c, " ]: ")
         Leia(m[l, c])
      FimPara
   FimPara

   EscrevaL("Você digitou os seguintes valores: ")
   
   Para l <- 1 ate 3 faca
      Escreva("[")
      Para c <- 1 ate 2 faca
         Escreva(m[l, c])
      FimPara
      EscrevaL(" ]")
   FimPara

Fimalgoritmo