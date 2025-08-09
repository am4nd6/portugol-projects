Algoritmo "Aproveitamento de um aluno"

Var

   n1, n2, media: real
   aproveitamento: caractere

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
      
      Se(media<=10) e (media>=9) entao
        aproveitamento <- "A"
      Senao
         Se(media<9) e (media>=8) entao
           aproveitamento <- "B"
         Senao
           Se(media<8) e (media>=7) entao
             aproveitamento <- "C"
           Senao
             Se(media<7) e (media>=6) entao
               aproveitamento <- "D"
             Senao
               Se(media<6) e (media>=5) entao
                 aproveitamento <- "E"
               Senao
                 aproveitamento <- "F"
               FimSe
             FimSe
           FimSe
         FimSe
      FimSe
      
      Escreval("APROVEITAMENTO:", aproveitamento)
      Escreva("-------------------------------")
      

Fimalgoritmo