Algoritmo "Fibonacci usando função e passagem de parâmetro por referência"

Var

   c, n1, n2: Inteiro
   
Funcao Fibonacci(Var x, y: Inteiro): Inteiro
Var
   n3: Inteiro
Inicio

   n3 <- x + y
   x <- y
   y <- n3
   Retorne n3

FimFuncao

Inicio

  n1 <- 0
  n2 <- 1
  
  Escreva(n1)
  Escreva(n2)
  
  Para c <- 1 ate 13 passo 1 faca
     Escreva(Fibonacci(n1, n2))
  FimPara

Fimalgoritmo