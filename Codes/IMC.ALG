Algoritmo "IMC"

Var

   massa, altura, imc: real

Inicio

      Escreva("Massa (Kg): ")
      Leia(massa)
      Escreva("Altura (m): ")
      Leia(altura)
      imc <- massa/(altura^2)
      Escreval("IMC: ",imc:3:3)
      Se(imc>=18.5) e (imc <25) entao
         Escreva("Parabéns! Você está na sua faixa de peso ideal.")
      Senao
         Escreva("Você não está na sua faixa de peso ideal.")
      FimSe

Fimalgoritmo