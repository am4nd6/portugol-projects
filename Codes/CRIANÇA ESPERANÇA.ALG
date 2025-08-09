Algoritmo "CRIANÇA ESPERANÇA"

Var

   resposta: inteiro
   valor: real

Inicio

      Escreval("---------------------------")
      Escreval("     CRIANÇA ESPERANÇA")
      Escreval("---------------------------")
      Escreval("")
      Escreval("[1] PARA DOAR R$10")
      Escreval("[2] PARA DOAR R$25")
      Escreval("[3] PARA DOAR R$50")
      Escreval("[4] PARA DOAR OUTROS VALORES")
      Escreval("[5] PARA CANCELAR")
      Leia(resposta)
      
      Escolha resposta
      
      Caso 1
        valor <- 10
        
      Caso 2
        valor <- 25
        
      Caso 3
        valor <- 50
        
      Caso 4
        Escreva("Digite o valor que deseja doar: ")
        Leia(valor)
        
      OutroCaso
        valor <- 0
      
      FimEscolha
      
      Escreval("")
      Escreval("---------------------------")
      EscrevaL("SUA DOAÇÃO FOI DE R$", valor)
      Escreval("AGRADECEMOS PELA SUA AJUDA!")
      Escreval("---------------------------")

      

Fimalgoritmo