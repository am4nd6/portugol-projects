Algoritmo "Triângulo"

Var

   l1,l2,l3: real

Inicio

      Escreva("Digite o valor do primeiro lado: ")
      Leia(l1)
      Escreva("Digite o valor do segundo lado: ")
      Leia(l2)
      Escreva("Digite o valor do terceiro lado: ")
      Leia(l3)
      Se ((l1+l2 > l3) e (l1+l3 > l2) e (l2+l3> l1)) entao
         Se((l1=l2) e (l2=l3)) entao
             Escreva("Isto é um triângulo equilátero!")
         senao
               Se((l1<>l2) e (l2<>l3) e (l1<>l3)) entao
                 Escreva("Isto é um triângulo escaleno!")
               senao
                  Se ((l1 = l2) ou (l2 = l3) ou (l3 = l1)) entao
                  Escreva("Isto é um triângulo isósceles!")
                  FimSe
               FimSe
         FimSe
      senao
           Escreva("Isto não é um triângulo!")
      FimSe



Fimalgoritmo