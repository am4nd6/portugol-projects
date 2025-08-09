Algoritmo "Matriz identidade 3x3"

Var

   m: vetor[1..3, 1..3] de Inteiro
   l, c: Inteiro

Inicio

   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se(l = c) entao
            m[l, c] <- 1
         Senao
            m[l, c] <- 0
         FimSe
         Escreva(m[l, c]:3)
      FimPara
      EscrevaL()
   FimPara

Fimalgoritmo