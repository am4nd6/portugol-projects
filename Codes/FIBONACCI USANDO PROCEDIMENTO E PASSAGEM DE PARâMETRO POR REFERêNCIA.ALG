Algoritmo "Fibonacci usando procedimento e passagem de parâmetro por referência"

Var

   c, n1, n2: Inteiro
   
Procedimento Fibonacci(Var x, y: Inteiro)
Var
   n3: Inteiro
Inicio

   n3 <- x + y
   Escreva(n3)
   x <- y
   y <- n3

FimProcedimento

Inicio

  n1 <- 0
  n2 <- 1
  
  Escreva(n1)
  Escreva(n2)
  
  Para c <- 1 ate 13 passo 1 faca
     Fibonacci(n1, n2)
  FimPara

Fimalgoritmo