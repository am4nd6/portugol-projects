Algoritmo "Quantos são negativos"

Var

   valor, qtd: real
   resp: caractere

Inicio

      qtd <- 0

      Repita
        Escreva("Digite um número: ")
        Leia(valor)
        
        Se(valor < 0) entao
          qtd <- qtd + 1
        FimSe
        
        Escreva("Deseja continuar? [S/N] ")
        Leia(resp)
      Ate((resp = "N") ou (resp = "n"))
      
      Escreva("A quantidade de números negativos digitados foi de", qtd)

Fimalgoritmo