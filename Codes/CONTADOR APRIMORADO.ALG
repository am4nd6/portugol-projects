Algoritmo "Contador aprimorado"

Var

   numero, numero_inicio, salto: inteiro

Inicio

      Escreva("Até em que número você deseja contar? ")
      Leia(numero)
      Escreva("Você quer que a contagem comece por qual número? ")
      Leia(numero_inicio)
      Escreva("Qual o valor do salto? ")
      Leia(salto)
      
      Se(salto = 0) entao
        salto <- 1
      FimSe
      
      //Contagem crescente
      Se(numero_inicio <= numero) entao
         Enquanto (numero_inicio <= numero) faca
                  Escreval(numero_inicio)
                  numero_inicio <- numero_inicio + salto
         FimEnquanto
         
       //Contagem decrescente
      Senao
           Enquanto (numero_inicio >= numero) faca
                  Escreval(numero_inicio)
                  numero_inicio <- numero_inicio - salto
         FimEnquanto
      
      FimSe

Fimalgoritmo