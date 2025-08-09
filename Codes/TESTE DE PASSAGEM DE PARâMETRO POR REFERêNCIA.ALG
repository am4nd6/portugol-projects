Algoritmo "Teste de passagem de parâmetro por referência"

Var

   x, y: Inteiro

Procedimento Soma(var a, b: Inteiro)
Inicio

   a <- a + 1
   b <- b + 2

   EscrevaL("Valores dentro do procedimento:")
   EscrevaL("O valor de A:", a)
   EscrevaL("O valor de B:", b)
   EscrevaL("A soma vale", a + b)
   Escreval("------------------")

FimProcedimento

Inicio

   x <- 4
   y <- 8

   EscrevaL("*************************************************")
   EscrevaL("  Teste de passagem de parâmetro por referência  ")
   EscrevaL("*************************************************")
   Escreval("")


   EscrevaL("Valores antes de chamar o procedimento:")
   EscrevaL("O valor de X:", x)
   EscrevaL("O valor de Y:", y)     // A passagem de parâmetro por referência
   Escreval("------------------")   //  muda o valor antigo da variável.
   Soma(x,y)
   EscrevaL("Valores depois de chamar o procedimento:")
   EscrevaL("O valor de X:", x)
   EscrevaL("O valor de Y:", y)
   Escreval("------------------")
   
   Escreval("")
   EscrevaL("CONCLUSÃO: A passagem de parâmetro por referência muda o valor antigo da variável.")

Fimalgoritmo