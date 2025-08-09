Algoritmo "Somador de 5 números"


Var

   contador: inteiro
   soma, numero: real

Inicio

      soma <- 0
      contador <- 1
      
      Enquanto (contador <= 5) faca
        Escreva("Digite o", contador, "º número: ")
        Leia(numero)
        soma <- soma + numero
        contador <- contador + 1
      FimEnquanto
      
      Escreva("A soma dos 5 números digitados é igual a", soma)

Fimalgoritmo