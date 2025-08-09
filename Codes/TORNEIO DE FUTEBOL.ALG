Algoritmo "Torneio de futebol"

Var

   time: vetor[1..3] de Caractere
   i, j: Inteiro

Inicio

   EscrevaL("------------------------")
   EscrevaL("   CAMPEONATO FUTEBOL   ")
   EscrevaL("------------------------")

   Para i <- 1 ate 3 faca
      Escreva("Nome do", i, "º time: ")
      Leia(time[i])
   FimPara

   LimpaTela

   EscrevaL("------------------------")
   EscrevaL("   TABELA DE PARTIDAS   ")
   EscrevaL("------------------------")

   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
         Se(time[i] <> time[j]) entao
            EscrevaL(time[i]:10, " [] x [] ", time[j])
         FimSe
      FimPara
   FimPara



Fimalgoritmo