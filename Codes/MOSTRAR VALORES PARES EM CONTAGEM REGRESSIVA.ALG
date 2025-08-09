Algoritmo "Mostrar valores pares em contagem regressiva"

Var

   valor, cont: inteiro

Inicio

      Escreva("Digite um valor: ")
      Leia(valor)
      
      Se(valor%2 <> 0) entao
         Se(valor > 0) entao
            valor <- valor - 1
         Senao
            valor <- valor + 1
         FimSe
      FimSe
      
      Se(valor > 0) entao
         Para cont <- valor ate 0 passo -2 faca
            Escreval(cont)
         FimPara
      Senao
         Para cont <- valor ate 0 passo 2 faca
            Escreval(cont)
         FimPara
      FimSe

Fimalgoritmo