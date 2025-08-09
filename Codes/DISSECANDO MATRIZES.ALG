Algoritmo "Dissecando matrizes"

Var

   m: vetor[1..4, 1..4] de Inteiro
   l, c, d, resposta: Inteiro

Procedimento MostrarMenu()
Inicio

   EscrevaL("MENU DE OPÇÕES")
   EscrevaL("======================")
   EscrevaL("[1] Mostrar a matriz")
   EscrevaL("[2] Diagonal principal")
   EscrevaL("[3] Triângulo superior")
   EscrevaL("[4] Triângulo inferior")
   EscrevaL("[5] Sair")
   Escreva("==== OPÇÃO: ")

FimProcedimento

Inicio

   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva("Digite o valor da posição [", l, ",", c, " ]: ")
         Leia(m[l, c])
      FimPara
   FimPara

   LimpaTela

   Repita
      MostrarMenu()
      Leia(resposta)
      EscrevaL()
      LimpaTela
      Escolha resposta

      Caso 1

         Para l <- 1 ate 4 faca
            Escreva("[")
            Para c <- 1 ate 4 faca
               Escreva(m[l, c], " ")
            FimPara
            EscrevaL("]")
         FimPara

      Caso 2

         Para l <- 1 ate 4 faca
            Escreva("[")
            Para c <- 1 ate 4 faca
               Se(l = c) entao
                  Escreva(m[l, c], " ")
               Senao
                  Escreva("   ")
               FimSe
            FimPara
            EscrevaL("]")
         FimPara

      Caso 3

         Para l <- 1 ate 4 faca
            d <- 1
            Escreva("[")
            Enquanto (d <= l) faca
               Escreva("   ")
               d <- d + 1
            FimEnquanto
            Para c <- l+1 ate 4 faca
               Escreva(m[l, c], " ")
            FimPara
            EscrevaL("]")
         FimPara

      Caso 4

         Para l <- 1 ate 4 faca
            d <- l
            Escreva("[")
            Se(l <> 1) entao
               Para c <- 1 ate l-1 passo 1 faca
                  Escreva(m[l, c], " ")
               FimPara
            FimSe
            Enquanto (d <= 4) faca
               Escreva("   ")
               d <- d + 1
            FimEnquanto
            EscrevaL("]")
         FimPara

      Caso 5

         EscrevaL("ENCERRANDO...")

      OutroCaso

         EscrevaL("OPÇÃO INVÁLIDA!!!")
         Escreval()

      FimEscolha
      EscrevaL()
   Ate(resposta = 5)

Fimalgoritmo