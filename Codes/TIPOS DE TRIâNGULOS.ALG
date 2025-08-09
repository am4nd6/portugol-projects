Algoritmo "Tipos de triângulos"

Var

      l1, l2, l3: real
      tri, equi, isos, esca: logico

Inicio

      Escreva("Digite o 1º lado: ")
      Leia(l1)
      Escreva("Digite o 2º lado: ")
      Leia(l2)
      Escreva("Digite o 3º lado: ")
      Leia(l3)
      
      tri <- (l1+l2>l3) e (l1+l3>l2) e (l2+l3>l1)
      equi <- (l1=l2) e (l2=l3)
      isos <- (l1=l2) ou (l1=l3) ou (l2=l3)
      esca <- (l1<>l2) e (l2<>l3) e (l1<>l3)
      
      Escreval("Pode formar um triângulo? ", tri)
      Escreval("O triângulo é equilátero? ", equi)
      Escreval("O triângulo é isósceles? ", isos)
      Escreval("O triângulo é escaleno? ", esca)
      

Fimalgoritmo