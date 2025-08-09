Algoritmo "Conversor de moedas x vezes"

Var

   x, contador: inteiro
   reais, dolares: real

Inicio

      contador <- 1

      Escreva("Quantas vezes você deseja realizar as conversões? ")
      Leia(x)
      
      Se(x < 0) entao
         Repita
           Escreval("Você não pode fazer", x, " conversões! Tente novamente.")
           Escreva("Quantas vezes você deseja realizar as conversões? ")
           Leia(x)
         Ate(x >= 0)
      FimSe

      Se(x = 0) entao
        Escreva("Ok, sem conversões.")
      Senao
         Enquanto (contador <= x) faca
              Escreva("Quantos reais você deseja converter? R$")
              Leia(reais)
              dolares <- (reais/5.2)
              Escreval("Você terá $", dolares)
              contador <- contador + 1
         FimEnquanto
      FimSe

Fimalgoritmo