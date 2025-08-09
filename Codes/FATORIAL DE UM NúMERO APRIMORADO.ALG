Algoritmo "Fatorial de um número aprimorado"

Var

   n, valor, cont: inteiro
   resp: caractere

Inicio

      Repita

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

         Escreval("O fatorial de", n, " (", n, "! )"," é igual a", valor)
         Escreval("----------------------------------------------------------")
         
         Escreva("Deseja continuar? [S/N] ")
         Leia(resp)
         
         Ate((resp = "N") ou (resp = "n"))

Fimalgoritmo