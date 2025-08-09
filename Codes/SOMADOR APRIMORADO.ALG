Algoritmo "Somador aprimorado"


Var

   contador, n: inteiro
   soma, numero, maior: real

Inicio

      maior <- 0
      soma <- 0
      contador <- 1
      
      Escreva("Quantos números você deseja somar? ")
      Leia(n)
      
      Se(n < 0) entao
        Escreva("Você não pode somar", n, " valores. Digite um número válido!")
      Senao
         Se(n > 0) entao
            Enquanto (contador <= n) faca
              Escreva("Digite o", contador, "º número: ")
              Leia(numero)
              
              Se(numero > maior) entao
                maior <- numero
              Fimse
              
              soma <- soma + numero
              contador <- contador + 1
            FimEnquanto

            Escreval("A soma dos", n, " números digitados é igual a", soma)
            Escreva("E o maior número digitado foi", maior)

         Senao
            Escreva("Ok, sem soma.")
         FimSe
      FimSe
      
      

Fimalgoritmo