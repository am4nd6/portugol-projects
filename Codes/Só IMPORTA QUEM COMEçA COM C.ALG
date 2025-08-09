Algoritmo "Só importa quem começa com C"

Var

   nome: Caractere
   nome_so_com_c: vetor[1..10] de Caractere
   i, tot: Inteiro

Inicio

   tot <- 0

   Para i <-1 ate 10 faca
   
      Escreva("Digite o", i, "º nome: ")
      Leia(nome)

      Se(Copia(Maiusc(nome), 1, 1) = "C") entao
         tot <- tot + 1
         nome_so_com_c[tot] <- nome
      FimSe

   FimPara

   LimpaTela
   EscrevaL("********************************")
   EscrevaL("   L I S T A G E M  F I N A L   ")
   EscrevaL("********************************")

   Para i <- 1 ate tot faca
      EscrevaL(nome_so_com_c[i])
   FimPara

Fimalgoritmo