Algoritmo "Somador de x números usando o enquanto"


Var

   resposta: caractere
   soma, numero: real

Inicio

      soma <- 0
      resposta <- "S"
      
      Enquanto ((resposta = "S") ou (resposta = "s")) faca
        Escreva("Digite o valor: ")
        Leia(numero)
        soma <- soma + numero
        Escreva("Você quer continuar? [S/N] ")
        Leia(resposta)
      FimEnquanto
      
      Escreva("A soma de todos o valores digitados é igual a", soma)

Fimalgoritmo