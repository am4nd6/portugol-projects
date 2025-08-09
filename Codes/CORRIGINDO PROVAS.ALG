Algoritmo "Corrigindo provas"

Var

   gabarito, respostas: vetor[1..5] de Caractere
   nome: vetor[1..3] de Caractere
   nota_final: vetor[1..3] de Inteiro
   i, j, soma_das_notas: Inteiro
   media_da_turma: Real

Inicio

   soma_das_notas <- 0

   EscrevaL("Passo 1 - Cadastro de gabarito")
   EscrevaL("------------------------------")

   Para i <- 1 ate 5 faca
      Escreva("Questão", i, ": ")
      Leia(gabarito[i])
   FimPara

   Para i <- 1 ate 3 faca
      LimpaTela
      EscrevaL("-----------------")
      EscrevaL("ALUNO", i)
      EscrevaL("-----------------")
      Escreva("Nome: ")
      Leia(nome[i])

      EscrevaL("RESPOSTAS DADAS: ")

      Para j <- 1 ate 5 faca
         Escreva("Questão", j, ": ")
         Leia(respostas[j])

         Se(Maiusc(respostas[j]) = Maiusc(gabarito[j])) entao
            nota_final[i] <- nota_final[i] + 2
         FimSe
      FimPara
      soma_das_notas <- soma_das_notas + nota_final[i]
   FimPara

   media_da_turma <- soma_das_notas/3

   LimpaTela

   EscrevaL("NOTAS FINAIS")
   EscrevaL("--------------------------------")

   Para i <- 1 ate 3 faca
      EscrevaL(nome[i]:15, nota_final[i])
   FimPara

   EscrevaL("--------------------------------")

   Escreva("Média da turma:", media_da_turma:3:1)

Fimalgoritmo