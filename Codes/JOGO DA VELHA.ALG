Algoritmo "Jogo da velha"

Var

   m: vetor[1..3, 1..3] de Caractere
   l, c, vezDoJogador1, jogador, posicao, casasOcupadas, ganhador: Inteiro
   simbolo, status: Caractere

Procedimento PreencherMatriz()
Inicio

   m[1, 1] <- "1"
   m[1, 2] <- "2"
   m[1, 3] <- "3"
   m[2, 1] <- "4"
   m[2, 2] <- "5"
   m[2, 3] <- "6"
   m[3, 1] <- "7"
   m[3, 2] <- "8"
   m[3, 3] <- "9"


FimProcedimento

Procedimento MostrarJogo()
Inicio

   EscrevaL("+---+---+---+")

   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Escreva("| ", m[l, c], " ")
      FimPara
      EscrevaL("|")
      EscrevaL("+---+---+---+")
   FimPara

FimProcedimento

Funcao JogadaValida(jogada: Inteiro): Logico
Var
   retorno: Logico
Inicio

   Se(((jogada <> 1) e (jogada <> 2) e (jogada <> 3) e (jogada <> 4) e (jogada <> 5) e (jogada <> 6) e (jogada <> 7) e (jogada <> 8) e (jogada <> 9)) ou (JogadaDiponivel(jogada) = falso)) entao
      retorno <- falso
   Senao
      retorno <- verdadeiro
   FimSe

   Retorne retorno

FimFuncao

Funcao JogadaDiponivel(jogo: Inteiro): Logico
Var
   ValorDoVetor: Caractere
   retorno: Logico
Inicio

   ValorDoVetor <- PosicaoDoVetor(jogo)
   Se((ValorDoVetor <> "X") e (ValorDoVetor <> "O")) entao
      retorno <- verdadeiro
   Senao
      retorno <- falso
   FimSe

   Retorne retorno

FimFuncao

Funcao PosicaoDoVetor(posi: Inteiro): Caractere
Var
   retorno: Caractere
Inicio

   Escolha posi
   Caso 1
      retorno <- m[1, 1]
   Caso 2
      retorno <- m[1, 2]
   Caso 3
      retorno <- m[1, 3]
   Caso 4
      retorno <- m[2, 1]
   Caso 5
      retorno <- m[2, 2]
   Caso 6
      retorno <- m[2, 3]
   Caso 7
      retorno <- m[3, 1]
   Caso 8
      retorno <- m[3, 2]
   OutroCaso
      retorno <- m[3, 3]
   FimEscolha

   Retorne retorno

FimFuncao

Procedimento MarcarJogada(jogada: Inteiro)
Inicio

   Escolha jogada
   Caso 1
      m[1, 1] <- simbolo
   Caso 2
      m[1, 2] <- simbolo
   Caso 3
      m[1, 3] <- simbolo
   Caso 4
      m[2, 1] <- simbolo
   Caso 5
      m[2, 2] <- simbolo
   Caso 6
      m[2, 3] <- simbolo
   Caso 7
      m[3, 1] <- simbolo
   Caso 8
      m[3, 2] <- simbolo
   OutroCaso
      m[3, 3] <- simbolo
   FimEscolha

   casasOcupadas <- casasOcupadas + 1

FimProcedimento

Funcao Empate(): Logico
Var
   retorno: Logico
Inicio

   Se(casasOcupadas = 9) entao
      retorno <- verdadeiro
      status <- "EMPATE!"
   Senao
      retorno <- falso
   FimSe

   Retorne retorno

FimFuncao

Funcao FimDeJogo(): Logico
Var
   retorno: Logico
Inicio

   Se((Empate() = verdadeiro) ou (umJogadorGanhou() = verdadeiro)) entao
      retorno <- verdadeiro
   Senao
      retorno <- falso
   FimSe

   Retorne retorno

FimFuncao

Funcao umJogadorGanhou(): Logico
Var
   retorno: Logico
Inicio

   Se((Jogador1Ganhou() = verdadeiro) ou (Jogador2Ganhou() = verdadeiro)) entao
      retorno <- verdadeiro
   Senao
      retorno <- falso
   FimSe

   Retorne retorno

FimFuncao

Funcao Jogador1Ganhou(): Logico
Var
   retorno: Logico
Inicio

   //Linhas
   Se((m[1, 1] = "X") e (m[1, 2] = "X") e (m[1, 3] = "X")) entao
      retorno <- verdadeiro
   Senao
      Se((m[2, 1] = "X") e (m[2, 2] = "X") e (m[2, 3] = "X")) entao
         retorno <- verdadeiro
      Senao
         Se((m[3, 1] = "X") e (m[3, 2] = "X") e (m[3, 3] = "X")) entao
            retorno <- verdadeiro
         Senao
            //Colunas
            Se((m[1, 1] = "X") e (m[2, 1] = "X") e (m[3, 1] = "X")) entao
               retorno <- verdadeiro
            Senao
               Se((m[1, 2] = "X") e (m[2, 2] = "X") e (m[3, 2] = "X")) entao
                  retorno <- verdadeiro
               Senao
                  Se((m[1, 3] = "X") e (m[2, 3] = "X") e (m[3, 3] = "X")) entao
                     retorno <- verdadeiro
                  Senao
                     //Diagonais
                     Se((m[1, 1] = "X") e (m[2, 2] = "X") e (m[3, 3] = "X")) entao
                        retorno <- verdadeiro
                     Senao
                        Se((m[3, 1] = "X") e (m[2, 2] = "X") e (m[1, 3] = "X")) entao
                           retorno <- verdadeiro
                        Senao
                           retorno <- falso
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe

   Se(retorno = verdadeiro) entao
      status <- "PARABÉNS, JOGADOR 1!"
   FimSe

   Retorne retorno
FimFuncao


Funcao Jogador2Ganhou(): Logico
Var
   retorno: Logico
Inicio

   //Linhas
   Se((m[1, 1] = "O") e (m[1, 2] = "O") e (m[1, 3] = "O")) entao
      retorno <- verdadeiro
   Senao
      Se((m[2, 1] = "O") e (m[2, 2] = "O") e (m[2, 3] = "O")) entao
         retorno <- verdadeiro
      Senao
         Se((m[3, 1] = "O") e (m[3, 2] = "O") e (m[3, 3] = "O")) entao
            retorno <- verdadeiro
         Senao
            //Colunas
            Se((m[1, 1] = "O") e (m[2, 1] = "O") e (m[3, 1] = "O")) entao
               retorno <- verdadeiro
            Senao
               Se((m[1, 2] = "O") e (m[2, 2] = "O") e (m[3, 2] = "O")) entao
                  retorno <- verdadeiro
               Senao
                  Se((m[1, 3] = "O") e (m[2, 3] = "O") e (m[3, 3] = "O")) entao
                     retorno <- verdadeiro
                  Senao
                     //Diagonais
                     Se((m[1, 1] = "O") e (m[2, 2] = "O") e (m[3, 3] = "O")) entao
                        retorno <- verdadeiro
                     Senao
                        Se((m[3, 1] = "O") e (m[2, 2] = "O") e (m[1, 3] = "O")) entao
                           retorno <- verdadeiro
                        Senao
                           retorno <- falso
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe

   Se(retorno = verdadeiro) entao
      status <- "PARABÉNS, JOGADOR 2!"
   FimSe

   Retorne retorno

FimFuncao

Inicio

   vezDoJogador1 <- 0
   casasOcupadas <- 0

   PreencherMatriz()

   LimpaTela
   MostrarJogo()

   Repita

      Se(vezDoJogador1 = 0) entao
         jogador <- 1
         simbolo <- "X"
         vezDoJogador1 <- 1
      Senao
         jogador <- 2
         simbolo <- "O"
         vezDoJogador1 <- 0
      FimSe

      EscrevaL()
      Escreva("Vez do jogador", jogador, ": Vai jogar [", simbolo, "] em qual posição? ")
      Leia(posicao)

      Se(JogadaValida(posicao) = falso) entao
         Repita
            EscrevaL("JOGADA INVÁLIDA!")
            Escreva("Vez do jogador", jogador, ": Vai jogar [", simbolo, "] em qual posição? ")
            Leia(posicao)
         Ate(JogadaValida(posicao) = verdadeiro)
      FimSe

      MarcarJogada(posicao)
      LimpaTela
      MostrarJogo()

   Ate(FimDeJogo() = verdadeiro)

   EscrevaL()
   Escreva("FIM DE JOGO. ", status)

Fimalgoritmo