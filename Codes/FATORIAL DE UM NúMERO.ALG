Algoritmo "Fatorial de um número"

Var

   n, valor, cont: inteiro

Inicio


      Escreva("Digite o número no qual você deseja ver o seu fatorial: ")
      Leia(n)
      
      Se(n < 0) entao
         Repita
            Escreval("Não existe fatoriais de números negativos! Tente novamente.")
            Escreva("Digite o número no qual você deseja ver o seu fatorial: ")
            Leia(n)
         Ate(n > 0)
      FimSe
      
      valor <- n
      cont <- n

      Repita
        cont <- cont - 1
        valor <- valor * cont
      Ate(cont = 1)

      Escreva("O fatorial de", n, " (", n, "! )"," é igual a", valor)

Fimalgoritmo