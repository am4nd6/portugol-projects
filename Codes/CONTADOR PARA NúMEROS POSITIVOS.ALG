Algoritmo "Contador para números positivos"

Var

   contador, salto, n: inteiro

Inicio

      Escreva("Até que número você deseja contar? ")
      Leia(n)
      Escreva("Qual o valor do salto? ")
      Leia(salto)

      Se(salto = 0) entao
        salto <- 1
      FimSe

      contador <- 0
      Enquanto (contador <= n) faca
        Escreval(contador)
        contador <- contador + salto
      FimEnquanto
      
      Escreva("Terminei de contar.")

Fimalgoritmo