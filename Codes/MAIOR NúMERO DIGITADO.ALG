Algoritmo "Maior número digitado"

Var

   resposta: caractere
   numero, maior: real
   contador: inteiro

Inicio

      resposta <- "S"
      contador <- 1
      
      Repita
         Escreva("Digite o", contador, "º número: ")
         Leia(numero)
         contador <- contador + 1

         Se(numero > maior) entao
           maior <- numero
         Fimse
         
         Escreva("Você deseja continuar? [S/N] ")
         Leia(resposta)
         
         Se((resposta <> "S") e (resposta <> "s") e (resposta <> "N") e (resposta <> "n")) entao
           Repita
             Escreval("Resposta inválida!")
             Escreva("Você deseja continuar? [S/N] ")
             Leia(resposta)
           Ate ((resposta = "S") ou (resposta = "s") ou (resposta = "N") ou (resposta = "n"))
         FimSe

      Ate ((resposta = "N") ou (resposta = "n"))
      
      Escreva("O maior número digitado foi o", maior)

Fimalgoritmo