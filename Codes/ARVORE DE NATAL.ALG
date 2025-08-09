algoritmo "arvore de natal"

var
   espaco_da_arvore, altura_da_arvore: inteiro

procedimento arvore
var i, j, k: inteiro
inicio

   para i de 1 ate altura_da_arvore faca
      para j de i ate espaco_da_arvore faca
         escreva(" ")
      fimpara

      para k de 1 ate i faca
         escreva("* ")
      fimpara

      escreval()
   fimpara
fimprocedimento

procedimento tronco
var
   i, j, k, espaco_do_tronco, largura_do_tronco, altura_do_tronco: inteiro
inicio

   espaco_do_tronco <- int((espaco_da_arvore-altura_da_arvore) + ((2*altura_da_arvore)/3) + 1)
   largura_do_tronco <- int(altura_da_arvore/3)
   altura_do_tronco <- int(0.8 * largura_do_tronco)

   se(altura_da_arvore%3<>0) entao
      espaco_do_tronco <- espaco_do_tronco + 1
   fimse

   para i de 1 ate altura_do_tronco faca
      para j de 1 ate espaco_do_tronco faca
         escreva(" ")
      fimpara

      para k de 1 ate largura_do_tronco faca
         escreva("* ")
      fimpara

      escreval()
   fimpara

fimprocedimento

inicio

   escreva("Quantos espaços na tela você deseja colocar a Árvore de Natal? [recomendado maior que 80] ")
   leia(espaco_da_arvore)

   escreva("Qual a altura (cm) da Árvore de Natal? ")
   leia(altura_da_arvore)

   limpatela

   arvore
   tronco

fimalgoritmo
