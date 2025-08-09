Algoritmo "Escolhendo pessoas"

Var

   sexo, cabelo, resp: caractere
   idade, opcao, qtd_homens, qtd_mulheres: inteiro

Inicio

      qtd_homens <- 0
      qtd_mulheres <- 0
      
      Repita
      
         Escreval("============================")
         Escreval("     SELETOR DE PESSOAS     ")
         Escreval("============================")
         
         Escreva("Qual o sexo? [M/F] ")
         Leia(sexo)
         
         Se((sexo <> "m") e (sexo <> "M") e (sexo <> "f") e (sexo <> "F")) entao
            Repita
              Escreval("Valor inválido! Tente novamente.")
              Escreva("Qual o sexo? [M/F] ")
              Leia(sexo)
            Ate((sexo = "m") ou (sexo = "M") ou (sexo = "f") ou (sexo = "F"))
         FimSe
         
         Escreva("Qual a idade? ")
         Leia(idade)
         
         Repita
            Escreval("Qual a cor do cabelo? ")
            Escreval("---------------------")
            Escreval("[1] Preto")
            Escreval("[2] Castanho")
            Escreval("[3] Loiro")
            Escreval("[4] Ruivo")
            Leia(opcao)

            Escolha opcao

            Caso 1
              cabelo <- "Preto"
            Caso 2
              cabelo <- "Castanho"
            Caso 3
              cabelo <- "Loiro"
            Caso 4
              cabelo <- "Ruivo"
            OutroCaso
              Escreval("Valor inválido! Tente novamente.")
            FimEscolha
         Ate((opcao = 1) ou (opcao = 2) ou (opcao = 3) ou (opcao = 4))
         
         Se(((sexo = "M") ou (sexo = "m")) e (idade > 18) e (cabelo = "Castanho")) entao
           qtd_homens <- qtd_homens + 1
         Senao
           Se(((sexo = "F") ou (sexo = "f")) e ((idade > 25) e (idade < 30)) e (cabelo = "Loiro")) entao
             qtd_mulheres <- qtd_mulheres + 1
           FimSe
         FimSe

         Escreva("Deseja continuar? [S/N] ")
         Leia(resp)
      Ate((resp = "N") ou (resp = "n"))
      
      Escreval("-------------------------------------------")
      Escreval("RESULTADO FINAL")
      Escreval("-------------------------------------------")
      Escreval("Total de homens com mais de 18 e cabelos castanhos: ", qtd_homens)
      Escreval("Total de mulheres entre 25 e 30 e cabelos loiros: ", qtd_mulheres)

Fimalgoritmo