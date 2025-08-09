Algoritmo "Verificador de par ou ímpar usando função"

Var

   numero: Inteiro
   resultado: caractere

Funcao ParOuImpar(x: Inteiro): Caractere

Inicio

   Se(x%2 = 0) entao
      Retorne "par."
   Senao
      Retorne "ímpar."
   FimSe

FimFuncao

Inicio

   Escreva("Digite um número: ")
   Leia(numero)

   resultado <- ParOuImpar(numero)

   Escreva("O número", numero, " é ", resultado)

Fimalgoritmo