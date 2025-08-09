algoritmo "Graus para Radianos e Radianos para Graus"

var

procedimento menu
var
   opcao:inteiro
   graus,rad:real
   tec:caractere
inicio

   repita
      limpatela
      escreval
      escreval("-              MENU             -")
      escreval("---------------------------------")
      escreval("- 1. Graus para Radianos        -")
      escreval("- 2. Radianos para Graus        -")
      escreval("- 3. Sair                       -")
      escreval("---------------------------------")
      escreva("Sua opção [1,3]: ")
      leia(opcao)

      escolha opcao

      caso 1
         limpatela
         escreva("Digite o ângulo em graus: ")
         leia(graus)

         escreval
         escreval("O ângulo", graus, "° em radianos é aproximadamente", graus_para_radianos(graus):5:2, ".")

         escreval
         escreval("Aperte enter para continuar...")
         leia(tec)

      caso 2
         limpatela
         escreva("Digite o ângulo em radianos: ")
         leia(rad)

         escreval
         escreval("O ângulo", rad, " radianos em graus é aproximadamente ", radianos_para_graus(rad):5:1, "°.")

         escreval
         escreval("Aperte enter para continuar...")
         leia(tec)

      caso 3
         sair

      outrocaso
         limpatela
         escreval("Opção inválida! Tente novamente.")

         escreval
         escreval("Aperte enter para continuar...")
         leia(tec)

      fimescolha
   ate(opcao=3)
fimprocedimento

funcao graus_para_radianos(graus:real):real
var x: real

inicio

   x <- (graus*pi)/180

   retorne x
fimfuncao

funcao radianos_para_graus(rad:real):real
var x: real

inicio

   x <- (rad*180)/pi

   retorne x
fimfuncao

procedimento sair
inicio

   limpatela
   escreva("Saindo...")

fimprocedimento

inicio

   menu

fimalgoritmo