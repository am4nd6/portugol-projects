Algoritmo "IMC aprimorado"

Var

   massa, altura, imc: real

Inicio

      Escreva("Massa (Kg): ")
      Leia(massa)
      Escreva("Altura (m): ")
      Leia(altura)
      imc <- massa/(altura^2)
      Escreval("IMC: ",imc:3:3)
      Se(imc<17) entao
        Escreva("Muito abaixo do peso.")
      Senao
        Se(imc>=17) e (imc<18.5) entao
          Escreva("Abaixo do peso.")
        Senao
          Se(imc >=18.5) e (imc<25) entao
            Escreva("Peso ideal.")
          Senao
            Se(imc>=25) e (imc<30) entao
              Escreva("Sobrepeso.")
            Senao
              Se(imc>=30) e (imc<35) entao
                Escreva("Obesidade.")
              Senao
                Se(imc>=35) e (imc<40) entao
                  Escreva("Obesidade severa.")
                Senao
                  Escreva("Obesidade mórbida")
                FimSe
              FimSe
            FimSe
          FimSe
        FimSe
      FimSe

Fimalgoritmo