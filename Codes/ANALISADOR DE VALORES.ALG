Algoritmo "Analisador de valores"

Var

   cont, div_por_5, valores_nulos: inteiro
   valor, soma_de_valores, media, soma_de_valores_pares: real

Inicio

   soma_de_valores <- 0
   div_por_5 <- 0
   valores_nulos <- 0
   soma_de_valores_pares <- 0

   Para cont:= 1 ate 5 faca
      Escreva("Digite o", cont, "º valor: ")
      Leia(valor)
      
      soma_de_valores <- soma_de_valores + valor
      
      Se(valor % 5 = 0) entao
         div_por_5 <- div_por_5 + 1
      FimSe
      
      Se(valor = 0) entao
         valores_nulos <- valores_nulos + 1
      FimSe
      
      Se(valor % 2 = 0) entao
         soma_de_valores_pares <- soma_de_valores_pares + valor
      FimSe
      
   FimPara
   
   media <- soma_de_valores/5
   
   Escreval("A soma entre os valores digitados é", soma_de_valores)
   Escreval("A média entre os valores digitados é", media)
   Escreval("A quantidade de valores divisíveis por cinco é", div_por_5)
   Escreval("A quantidade de valores nulos digitados é", valores_nulos)
   Escreval("A soma dos valores pares digitados é", soma_de_valores_pares)

Fimalgoritmo