Algoritmo "Listagem da turma"

Var

   nome: vetor[1..4] de Caractere
   nota1, nota2, media: vetor[1..4] de Real
   c, tot_acima_da_media: Inteiro
   soma_de_medias, media_da_turma: Real

Inicio

   tot_acima_da_media <- 0
   soma_de_medias <- 0

   Para c <- 1 ate 4 faca
      EscrevaL("******************")
      EscrevaL("ALUNO", c)
      EscrevaL("******************")
      Escreva("Nome: ")
      Leia(nome[c])
      Escreva("Primeira nota: ")
      Leia(nota1[c])
      Escreva("Segunda nota: ")
      Leia(nota2[c])
      EscrevaL("")

      media[c] <- (nota1[c] + nota2[c])/2
      soma_de_medias <- soma_de_medias + media[c]

   FimPara

   media_da_turma <- soma_de_medias/4

   LimpaTela
   EscrevaL("--------------------------------")
   EscrevaL("       LISTAGEM DE ALUNOS       ")
   EscrevaL("--------------------------------")

   Para c <- 1 ate 4 faca
      EscrevaL(nome[c], ":", media[c]:4:1)

      Se(media[c] > media_da_turma) entao
         tot_acima_da_media <- tot_acima_da_media + 1
      Fimse
   FimPara

   Escreva("Ao todo temos", tot_acima_da_media, " aluno(s) acima da média da turma que é", media_da_turma:4:1)

Fimalgoritmo