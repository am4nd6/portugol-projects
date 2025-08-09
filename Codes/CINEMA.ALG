Algoritmo "Cinema"

Var

   lugares: vetor[1..10] de Caractere
   i: Inteiro
   resposta, cadeira: Caractere

Procedimento MostrarCadeiras()
Var j: Inteiro
Inicio

   Para j <- 1 ate 10 faca
      Escreva("[ ", lugares[j], " ] ")
   FimPara

   EscrevaL("")
   EscrevaL("---------------------------------------------------------------------------")

FimProcedimento

Funcao CadeiraExiste(cdr: Caractere): Logico
var cad: Caractere
Inicio

   cad <- Maiusc(cdr)

   Se((cad = "B1") ou (cad = "B2") ou (cad = "B3") ou (cad = "B4") ou (cad = "B5") ou (cad = "B6") ou (cad = "B7") ou (cad = "B8") ou (cad = "B9") ou (cad = "B10")) entao
      Retorne verdadeiro
   Senao
      Retorne falso
   FimSe

FimFuncao

Funcao CadeiraDisponivel(cad: Caractere): Logico
Var d: Inteiro
Inicio

   d <- Indice(cad)
   Se(lugares[d] = "---" ) entao
      Retorne falso
   Senao
      Retorne verdadeiro
   FimSe

FimFuncao

Procedimento OcuparCadeira(cadei: Caractere)
Var f: Inteiro
Inicio

   Para f <- 1 ate 10 faca
      Se(Maiusc(cadei) = Maiusc(lugares[f])) entao
         lugares[f] <- "---"
      FimSe
   FimPara

FimProcedimento

Funcao Indice(cad: Caractere): Inteiro
Var g: Caractere
Inicio

   g <- Maiusc(cad)

   Se (g = "B1") entao
      Retorne 1
   Senao
      Se (g = "B2") entao
         Retorne 2
      Senao
         Se (g = "B3") entao
            Retorne 3
         Senao
            Se (g = "B4") entao
               Retorne 4
            Senao
               Se (g = "B5") entao
                  Retorne 5
               Senao
                  Se (g = "B6") entao
                     Retorne 6
                  Senao
                     Se (g = "B7") entao
                        Retorne 7
                     Senao
                        Se (g = "B8") entao
                           Retorne 8
                        Senao
                           Se (g = "B9") entao
                              Retorne 9
                           Senao
                              Se (g = "B10") entao
                                 Retorne 10
                              FimSe
                           FimSe
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe


FimFuncao

Inicio

   lugares[1] <- "B1"
   lugares[2] <- "B2"
   lugares[3] <- "B3"
   lugares[4] <- "B4"
   lugares[5] <- "B5"
   lugares[6] <- "B6"
   lugares[7] <- "B7"
   lugares[8] <- "B8"
   lugares[9] <- "B9"
   lugares[10] <- "B10"

   Repita

      LimpaTela
      MostrarCadeiras()

      Escreva("Reservar a cadeira: ")
      Leia(cadeira)

      Se(CadeiraExiste(cadeira) = falso) entao
         Repita
            EscrevaL("Você digitou uma cadeira que não existe! Tente novamente.")
            Escreva("Reservar a cadeira: ")
            Leia(cadeira)
         Ate(CadeiraExiste(cadeira) = verdadeiro)
      FimSe

      Se(CadeiraDisponivel(cadeira) = verdadeiro) entao
         OcuparCadeira(cadeira)
         EscrevaL("Cadeira ", Maiusc(cadeira), " reservada!")
      Senao
         EscrevaL("ERRO: Lugar ocupado!")
      FimSe

      Escreva("Você deseja reservar outra? [S/N] ")
      Leia(resposta)
   Ate(Maiusc(resposta) = "N")


Fimalgoritmo