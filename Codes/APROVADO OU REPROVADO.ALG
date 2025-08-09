Algoritmo "Aprovado ou reprovado"

Var

   n1, n2, media: real

Inicio

      Escreval("-------------------------------")
      Escreval("     ESCOLA JAVALI CANSADO")
      Escreval("-------------------------------")
      Escreva("PRIMEIRA NOTA: ")
      Leia(n1)
      Escreva("SEGUNDA NOTA: ")
      Leia(n2)
      media <- (n1+n2)/2
      Escreval("-------------------------------")
      Escreval("MÉDIA:", media)
      
      Se(media>=7) entao
        Escreval("ALUNO(A) APROVADO(A)!")
      Senao
        Escreval("ALUNO(A) REPROVADO(A)!")
      FimSe
      
      Escreva("-------------------------------")
      

Fimalgoritmo