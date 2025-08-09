Algoritmo "É um número primo"

Var

   n, cont, qtd_divisores: inteiro
   resp: caractere

Inicio


      Escreval("--------------------------------------")
      Escreval("    DESCUBRA SE O NÚMERO É PRIMO")
      Escreval("--------------------------------------")

      Repita
      
            qtd_divisores <- 0

            Escreva("Digite um número: ")
            Leia(n)

            Se(n <= 0) entao
              Repita
                Escreval("Número inválido! Não existe números primos nulos/negativos!")
                Escreval("Tente novamente.")
                Escreva("Digite um número: ")
                Leia(n)
              Ate(n > 0)
            FimSe

            cont <- n

            Repita
              Se(n%cont = 0) entao
               qtd_divisores <- qtd_divisores + 1
              FimSe

              cont <- cont - 1
            Ate(cont < 1)

            Se(qtd_divisores = 2) entao
              Escreval("O número", n, " é primo.")
            Senao
              Escreval("O número", n, " não é primo.")
            FimSe

            Escreva("Deseja continuar? [S/N] ")
            Leia(resp)

         Ate((resp = "N") ou (resp = "n"))

Fimalgoritmo