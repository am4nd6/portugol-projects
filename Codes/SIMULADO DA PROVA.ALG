Algoritmo "Simulado da prova"

Var
   v,v_invertido: vetor[1..50] de inteiro     // Declaração de variáveis
   m: vetor[1..50, 1..50] de inteiro
   tamanho,linhas,colunas:inteiro
   c:caractere

procedimento preencher_vetor_v(n:inteiro)
var i:inteiro                               // Procedimento para preencher um vetor
inicio

   para i de 1 ate n faca
      escreva("Digite o valor da", i,"º posição do vetor v: ")
      leia(v[i])
   fimpara

fimprocedimento

procedimento mostrar_vetor_v(n:inteiro)
var i:inteiro
inicio
   escreval
   escreval(c," VETOR V ",c)                                   // Procedimento para mostrar um vetor
   escreval

   para i de 1 ate n faca
      escreval("v[", i:1, "]: ", v[i])
   fimpara

fimprocedimento

funcao ehpalindromo(n:inteiro):logico
var i:inteiro
   resultado:logico
inicio                                 // Função que retorna se o vetor é palíndromo ou não
   i<-1
   resultado<-verdadeiro
   enquanto ((resultado) e (i<=n)) faca
      resultado<- v[i]=v[n]
      i<-i+1
      n<-n-1
   fimenquanto
   retorne resultado
fimfuncao

procedimento inverter(n:inteiro)
var i,nn:inteiro
inicio                              // Procedimento para inverter um vetor
   nn<-n
   para i de 1 ate n faca
      v_invertido[i]<-v[nn]
      nn<-nn-1
   fimpara
fimprocedimento

procedimento mostrar_vetor_invertido(n:inteiro)
var i:inteiro
inicio
   escreval
   escreval(c," VETOR V INVERTIDO ",c)                  // Procedimento para mostrar o vetor invertido
   escreval
   inverter(n)

   para i de 1 ate n faca
      escreval("v[", i:1, "]: ", v_invertido[i])
   fimpara

fimprocedimento

procedimento preencher_matriz
var i,j:inteiro                               // Procedimento para preencher uma matriz
inicio

   escreval
   para i de 1 ate linhas faca
      para j de 1 ate colunas faca
         escreva("Digite o valor da matriz m[",i:1,",",j:1,"]: ")
         leia(m[i,j])
      fimpara
   fimpara

fimprocedimento

procedimento mostrar_matriz
var i,j:inteiro
inicio
   escreval
   escreval(c," MATRIZ M ",c)             // Procedimento para mostrar a matriz
   escreval

   para i de 1 ate linhas faca
      escreva("|")
      para j de 1 ate colunas faca
         escreva("  ", m[i,j])
      fimpara
      escreval("  |")
   fimpara

fimprocedimento

funcao media_da_matriz(l,c:inteiro):real
var i,j:inteiro
   soma, media:real                       // Função que retorna a média aritmética da matriz
inicio
   soma<-0

   para i de 1 ate l faca
      para j de 1 ate c faca
         soma<- soma+m[i,j]
      fimpara
   fimpara

   media<-soma/(l*c)
   retorne media
fimfuncao

procedimento acrescentar (l,c:inteiro)        // Procedimento para acrescentar nova linha e coluna
var i,j,somadelinhas,somadecolunas:inteiro
inicio

   linhas<-linhas+1
   colunas<-colunas+1

   para j de 1 ate c faca
      somadelinhas<-0
      para i de 1 ate l faca
         somadelinhas<-somadelinhas+m[i,j]  // Soma colunas para colocar na nova linha
         m[linhas,j]<-somadelinhas
      fimpara
   fimpara

   para i de 1 ate linhas faca
      somadecolunas<-0
      para j de 1 ate c faca
         somadecolunas<-somadecolunas+m[i,j]  // Soma linhas para colocar na nova coluna
         m[i,colunas]<- somadecolunas
      fimpara
   fimpara

fimprocedimento

Inicio
   c<-"**********"
   linhas<-linhas+1
   colunas<-colunas+1
   // INPUT
   escreva("Digite o tamanho do vetor v: ")
   leia(tamanho)
   limpatela

   // PROCESSING + OUTPUT

   // VETOR
   preencher_vetor_v(tamanho)
   mostrar_vetor_v(tamanho)
   escreval
   escreval("O vetor v é palíndromo? ", ehpalindromo(tamanho))
   escreval
   mostrar_vetor_invertido(tamanho)

   // MATRIZ
   escreval
   escreva("Digite a quantidade de linhas da matriz m: ")
   leia(linhas)
   escreva("Digite a quantidade de colunas da matriz m: ")
   leia(colunas)
   preencher_matriz
   escreval
   mostrar_matriz
   escreval
   escreval
   escreval("A média da matriz",linhas,"x",colunas:1," é: ", media_da_matriz(linhas,colunas):3:2)
   acrescentar(linhas,colunas)
   escreval
   mostrar_matriz


Fimalgoritmo