Algoritmo "Aprovado, reprovado ou recuperação"

Var

   n1, n2, media: real

Inicio

      Escreva("PRIMEIRA NOTA: ")
      Leia(n1)
      Escreva("SEGUNDA NOTA: ")
      Leia(n2)
      media <- (n1+n2)/2
      Escreval("MÉDIA:", media)

      Se(media>=7) entao
        Escreval("ALUNO(A) APROVADO(A)!")
      Senao
        Se(media>=5) e (media<7) entao
          Escreval("ALUNO(A) EM RECUPERAÇÃO!")
        Senao
          Escreval("ALUNO(A) REPROVADO(A)!")
        FimSE
      FimSe

      Escreva("-------------------------------")


Fimalgoritmo