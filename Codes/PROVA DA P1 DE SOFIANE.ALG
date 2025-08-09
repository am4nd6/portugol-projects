Algoritmo "Prova da p1 de Sofiane"

// Autor(a)    : Amanda Mendes da Silva
// Data atual  : 06/02/2025
Var

   m: vetor[1..50,1..50] de caractere
   linhas,colunas:inteiro
   c,cc,a,b,t:caractere

procedimento preencher_matriz
var i,j:inteiro                 // Procedimento para preencher uma matriz
inicio

   escreval
   para i de 1 ate linhas faca
      para j de 1 ate colunas faca
         escreva("Digite o valor da matriz m[",i:1,",",j:1,"]: ")
         leia(m[i,j])
         m[i,j]<-minusc(copia(m[i,j], 1, 1))
      fimpara
      escreval
   fimpara

fimprocedimento

procedimento mostrar_matriz
var i,j:inteiro
inicio
   escreval(cc," CONTÉUDO DA MATRIZ ",cc)    // Procedimento para mostrar a matriz
   escreval

   para i de 1 ate linhas faca
      escreva("|")
      para j de 1 ate colunas faca
         escreva("  ", m[i,j])
      fimpara
      escreval("  |")
   fimpara

fimprocedimento


procedimento mostrar_diagonal
var i,j:inteiro
inicio

   escreval(cc," DIAGONAL DA MATRIZ ",cc)    // Procedimento para mostrar a diagonal da matriz
   escreval

   para i de 1 ate linhas faca
      escreva("|")
      para j de 1 ate colunas faca
         se (i=j) entao
            escreva("  ", m[i,j])
         senao
            escreva("   ")
         fimse
      fimpara
      escreval("  |")
   fimpara

fimprocedimento

funcao ocorrencias(d:caractere):inteiro
var i,j,qtd:inteiro
inicio
   qtd<-0

   para i de 1 ate linhas faca
      para j de 1 ate colunas faca       // Função que retorna número de ocorrências obtidas
         se(d=m[i,j]) entao
            qtd<-qtd+1
         fimse
      fimpara
   fimpara

   retorne qtd

fimfuncao

procedimento substituir(aa,bb:caractere)
var i,j:inteiro
inicio

   para i de 1 ate linhas faca
      para j de 1 ate colunas faca    // Procedimento que substitui um caractere por outro
         se (aa=m[i,j]) entao
            m[i,j]<-bb
         fimse
      fimpara
   fimpara

fimprocedimento

procedimento mostrar_vizinhos(ca:caractere)
var i,j:inteiro
inicio
   escreval(cc," VIZINHOS ",cc)    // Procedimento para mostrar vizinhos de um caractere
   escreval

   para i de 1 ate linhas faca
      para j de 1 ate colunas faca
         se (ca=m[i,j]) entao
            se(i<>1) entao
               escreval("  ",m[i-1,j]) // De cima
            fimse

            se(j<>1) entao
               escreva(m[i,j-1]," ") // Esquerda
            senao
               escreva(" ")
            fimse

            escreva(ca) // Meio

            se(j<>colunas) entao
               escreval(" ",m[i,j+1]) // Direita
            fimse

            se(i<>linhas) entao
               escreval(" ",m[i+1,j]) // Debaixo
            fimse

            escreval
         fimse
      fimpara
   fimpara

fimprocedimento

Inicio
   cc<-"**********"
   escreva("Digite a quantidade de linhas da matriz m: ")
   leia(linhas)
   escreva("Digite a quantidade de colunas da matriz m: ")
   leia(colunas)
   preencher_matriz
   escreval
   mostrar_matriz
   escreval
   mostrar_diagonal
   escreval
   escreval
   escreva("Digite um caractere: ")
   leia(c)
   c<-minusc(copia(c, 1, 1))
   escreval
   escreval("A quantidade de ocorrências do caractere ",c," foi de:",ocorrencias(c))
   escreval
   escreva("Digite o caractere que deseja substitur: ")
   leia(a)
   a<-minusc(copia(a, 1, 1))
   escreva("Digite o novo caractere: ")
   leia(b)
   b<-minusc(copia(b, 1, 1))
   substituir(a,b)
   escreval
   mostrar_matriz
   escreval
   escreva("Digite o caractere que você deseja ver os vizinhos na matriz: ")
   leia(t)
   t<-minusc(copia(t, 1, 1))
   escreval
   mostrar_vizinhos(t)
Fimalgoritmo