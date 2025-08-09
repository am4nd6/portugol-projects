Algoritmo "Par ou Ímpar usando procedimento"

Var

   numero: Inteiro

Procedimento ParOuImpar(x: Inteiro)

Inicio

   Se(x % 2 = 0) entao
      Escreva("O número", x, " é par.")
   Senao
      Escreva("O número", x, " é ímpar.")
   FimSe

FimProcedimento

Inicio

   Escreva("Digite um número: ")
   Leia(numero)
   ParOuImpar(numero)

Fimalgoritmo