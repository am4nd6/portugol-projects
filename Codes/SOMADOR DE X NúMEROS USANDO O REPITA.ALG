Algoritmo "Somador de x números usando o repita"


Var

   resposta: caractere
   soma, numero: real

Inicio

      soma <- 0
      
      Repita
        Escreva("Digite o valor: ")
        Leia(numero)
        soma <- soma + numero
        Escreva("Você quer continuar? [S/N] ")
        Leia(resposta)
      Ate((resposta = "N") ou (resposta = "n"))
      
      Escreva("A soma de todos o valores digitados é igual a", soma)

Fimalgoritmo