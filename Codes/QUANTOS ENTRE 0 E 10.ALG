Algoritmo "Quantos entre 0 e 10"

Var

   cont, qtd_valores: inteiro
   valor, soma_impares: real

Inicio

   qtd_valores <- 0
   soma_impares <- 0

   Para cont <- 1 ate 6 passo 1 faca
      Escreva("Digite um valor: ")
      Leia(valor)

      Se((valor >= 0) e (valor <=10)) entao
         qtd_valores <- qtd_valores + 1
         Se(valor % 2 <> 0) entao
            soma_impares <- soma_impares + valor
         FimSe
      FimSe
   FimPara

   Escreval("Ao todo foram digitados", qtd_valores, " entre 0 e 10.")
   Escreva("Nesse intervalo, a soma de ímpares foi", soma_impares)

Fimalgoritmo