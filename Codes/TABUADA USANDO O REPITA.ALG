Algoritmo "Tabuada usando o repita"

Var

   cont, x, valor: inteiro

Inicio

      Escreva("De que número você deseja ver a tabuada? ")
      Leia(x)

      cont <- 1
      Repita
        valor <- cont * x
        Escreval(cont, " x", x, " =", valor)
        cont <- cont + 1
      Ate(cont > 10)
      
Fimalgoritmo