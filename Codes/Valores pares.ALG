Algoritmo "Valores pares"

Var

   v: vetor[1..7] de Inteiro
   c, quantos_sao_pares: Inteiro

Funcao EPar(valor: Inteiro): Logico
Inicio

   Se(valor%2 = 0) entao
      Retorne verdadeiro
   Senao
      Retorne falso
   FimSe

FimFuncao

Inicio

   quantos_sao_pares <- 0

   Para c <- 1 ate 7 faca
      Escreva("Digite o", c, "º valor: ")
      Leia(v[c])
   FimPara

   EscrevaL("***************************************")
   EscrevaL("Você digitou os seguintes valores: ")

   Para c <- 1 ate 7 faca
      Escreva("{", v[c], " }")
   FimPara

   EscrevaL("")

   Para c <- 1 ate 7 faca
      Se(EPar(v[c]) = verdadeiro) entao
         EscrevaL("Valor par na posição: ", c)
         quantos_sao_pares <- quantos_sao_pares + 1
      FimSe
   FimPara

   EscrevaL("Total de valores pares digitados: ", quantos_sao_pares)

Fimalgoritmo