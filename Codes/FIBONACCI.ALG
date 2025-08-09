Algoritmo "Fibonacci"

Var

   c, n1, n2, n3: Inteiro

Inicio

  n1 <- 0
  n2 <- 1
  
  Escreva(n1)
  Escreva(n2)
  
  Para c <- 1 ate 13 passo 1 faca
  
     n3 <- n1 + n2
     Escreva(n3)
     n1 <- n2
     n2 <- n3
     
  FimPara

Fimalgoritmo