Algoritmo "Matriz 4x4"

Var

   m: vetor[1..4, 1..4] de Inteiro
   l, c, soma, produto, maior_valor: Inteiro

Inicio

   soma <- 0
   produto <- 1
   maior_valor <- 0

   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva("Digite o valor da posição [", l, ",", c, " ]: ")
         Leia(m[l, c])

         Se(l = c) entao
            soma <- soma + m[l, c]
         FimSe
         Se(l = 2) entao
            produto <- produto * m[l, c]
         FimSe
         Se((c = 3) e (m[l, c] > maior_valor)) entao
            maior_valor <- m[l, c]
         FimSe
      FimPara
   FimPara

   EscrevaL()

   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l, c]:5)
      FimPara
      EscrevaL()
   FimPara

   EscrevaL()
   EscrevaL("* A soma dos valores da diagonal principal é igual a", soma)
   EscrevaL("* O produto dos valores da segunda linha é igual a", produto)
   EscrevaL("* O maior valor da terceira coluna é", maior_valor)

Fimalgoritmo