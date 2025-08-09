Algoritmo "Matriz Par"

Var

   m: vetor[1..3, 1..3] de Inteiro
   l, c, tot: Inteiro

Funcao EPar(valor: Inteiro): Logico
Inicio
   Se(valor % 2 = 0) entao
      Retorne verdadeiro
   Senao
      Retorne falso
   FimSe
FimFuncao
Inicio

   tot <- 0

   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Escreva("Digite o valor da posição [", l, ", ", c, " ]: ")
         Leia(m[l, c])
      FimPara
   FimPara

   EscrevaL()
   EscrevaL("MATRIZ:")
   EscrevaL("---------------------")

   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se(EPar(m[l, c]) = verdadeiro) entao
            Escreva("{", m[l, c], " }")
            tot <- tot + 1
         Senao
            Escreva(" ", m[l, c], "  ")
         FimSe
      FimPara
      EscrevaL()
   FimPara

   Escreva("No total foram digitados", tot, " valores pares.")

Fimalgoritmo