Algoritmo "Partida de futebol"

Var

   golsbangu, golsmadureira, diferenca: inteiro
   status: caractere

Inicio

      Escreval("      BANGU X MADUREIRA")
      Escreval("-----------------------------")
      Escreva("Quantos gols do Bangu? ")
      Leia(golsbangu)
      Escreva("Quantos gols do Madureira? ")
      Leia(golsmadureira)
      Escreval("-----------------------------")
      
      Se(golsbangu > golsmadureira) entao
        diferenca <- golsbangu-golsmadureira
      Senao
        Se(golsmadureira > golsbangu) entao
          diferenca <- golsmadureira-golsbangu
        Senao
          diferenca <- 0
        FimSe
      FimSe
      
      Se(diferenca = 0) entao
        status <- "EMPATE"
      Senao
        Se(diferenca > 0) e (diferenca < 4) entao
          status <- "PARTIDA NORMAL"
        Senao
          status <- "GOLEADA"
        FimSe
      FimSe
      
      Escreval("DIFERENÇA: ", diferenca)
      Escreval("STATUS: ", status)
      Escreval("-----------------------------")

Fimalgoritmo