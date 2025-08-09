Algoritmo "Média"

Var

   n, contador, soma, media: Real
   resposta: Caractere
   
Inicio

      contador <- 0
      soma <- 0
      Repita
            Escreva("Digite um número: ")
            Leia(n)
            soma <- soma + n
            contador <- contador + 1
            Escreva("Quer continuar? [S/N] ")
            Leia(resposta)
      Ate((resposta = "N") ou (resposta = "n"))
      media <- soma/contador
      Escreva("A média dos números digitados é", media)

Fimalgoritmo