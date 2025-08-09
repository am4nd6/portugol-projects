Algoritmo "Intersecção, diferença, união e ordenação de dois vetores"

Var
   v1,v2,vetor_interseccao, vetor_uniao: vetor[1..50] de inteiro
   n,p,tamanho_do_vetor_interseccao,tamanho_do_vetor_uniao:inteiro
   car,tec:caractere

procedimento preenchervetores
var i: inteiro
inicio
   limpatela
   escreva("Informe o tamanho do vetor v1: ")
   leia(n)

   para i de 1 ate n faca
      escreval
      escreva("Informe o valor de v1[",i:1, "]: ")
      leia(v1[i])
   fimpara

   escreval
   escreva("Pressione a tecla enter para continuar... ")
   leia(tec)

   limpatela
   escreva("Informe o tamanho do vetor v2: ")
   leia(p)

   para i de 1 ate p faca
      escreval
      escreva("Informe o valor de v2[",i:1, "]: ")
      leia(v2[i])
   fimpara

   escreval
   escreva("Pressione a tecla enter para continuar... ")
   leia(tec)
fimprocedimento

procedimento mostrarvetores
var i:inteiro
inicio
   limpatela
   escreval(car," VALORES DOS VETORES ",car)
   escreval

   para i de 1 ate n faca
      escreval("V1[",i:1, "]: ", v1[i])
   fimpara

   escreval
   para i de 1 ate p faca
      escreval("V2[",i:1, "]: ", v2[i])
   fimpara
fimprocedimento

funcao existenovetorinterseccao(a:inteiro):logico
var i:inteiro
   encontrado,retorno:logico
inicio
   encontrado<-falso
   i<-1
   retorno<-falso

   enquanto ((nao(encontrado)) e (i<=tamanho_do_vetor_interseccao)) faca
      se (vetor_interseccao[i]=a) entao
         encontrado<-verdadeiro
         retorno<-verdadeiro
      fimse

      i<-i+1
   fimenquanto

   retorne retorno
fimfuncao

procedimento interseccao
var i,j:inteiro
inicio
   tamanho_do_vetor_interseccao<-0

   para i de 1 ate n faca
      para j de 1 ate p faca
         se(v1[i]=v2[j]) entao
            se(nao(existenovetorinterseccao(v1[i]))) entao
               tamanho_do_vetor_interseccao<-tamanho_do_vetor_interseccao+1
               vetor_interseccao[tamanho_do_vetor_interseccao]<-v1[i]
            fimse
         fimse
      fimpara
   fimpara

fimprocedimento

procedimento mostrarinterseccao
var i:inteiro
inicio
   escreval
   escreval(car," VALORES DA INTERSECÇÃO ",car)
   escreval

   interseccao
   para i de 1 ate tamanho_do_vetor_interseccao faca
      escreval(vetor_interseccao[i])
   fimpara
fimprocedimento

procedimento diferenca
var i:inteiro
inicio
   escreval
   escreval(car," V1-V2 ",car)
   escreval

   interseccao
   para i de 1 ate n faca
      se(nao(existenovetorinterseccao(v1[i]))) entao
         escreval(v1[i])
      fimse
   fimpara
fimprocedimento

procedimento uniao
var i,j,a:inteiro
inicio
   tamanho_do_vetor_uniao<-0
   escreval
   escreval(car," UNIÃO V1 e V2 ",car)
   escreval

   interseccao
   para i de 1 ate n faca
      se(nao(existenovetorinterseccao(v1[i]))) entao
         tamanho_do_vetor_uniao<-tamanho_do_vetor_uniao+1
         vetor_uniao[tamanho_do_vetor_uniao]<-v1[i]
      fimse
   fimpara

   para i de 1 ate p faca
      se(nao(existenovetorinterseccao(v2[i]))) entao
         tamanho_do_vetor_uniao<-tamanho_do_vetor_uniao+1
         vetor_uniao[tamanho_do_vetor_uniao]<-v2[i]
      fimse
   fimpara

   se(tamanho_do_vetor_interseccao<>0) entao
      para i de 1 ate tamanho_do_vetor_interseccao faca
         tamanho_do_vetor_uniao<-tamanho_do_vetor_uniao+1
         vetor_uniao[tamanho_do_vetor_uniao]<-vetor_interseccao[i]
      fimpara
   fimse

   para i de 1 ate tamanho_do_vetor_uniao faca
      para j de 1 ate tamanho_do_vetor_uniao faca
         se(vetor_uniao[i]<vetor_uniao[j]) entao
            a<-vetor_uniao[i]
            vetor_uniao[i]<-vetor_uniao[j]
            vetor_uniao[j]<-a
         fimse
      fimpara
   fimpara

   para i de 1 ate tamanho_do_vetor_uniao faca
      escreval(vetor_uniao[i])
   fimpara

fimprocedimento

procedimento ordenacao
var i,j,a:inteiro
inicio
   escreval
   escreval(car," ORDENAÇÃO DO V1 ",car)

   escreval
   escreval("CRESCENTE: ")
   escreval
   para i de 1 ate n faca
      para j de 1 ate n faca
         se(v1[i]<v1[j]) entao
            a<-v1[i]
            v1[i]<-v1[j]
            v1[j]<-a
         fimse
      fimpara
   fimpara

   para i de 1 ate n faca
      escreval("V1[",i:1,"]:",v1[i])
   fimpara

   escreval
   escreval("DECRESCENTE: ")
   escreval
   para i de 1 ate n faca
      para j de 1 ate n faca
         se(v1[i]>v1[j]) entao
            a<-v1[i]
            v1[i]<-v1[j]
            v1[j]<-a
         fimse
      fimpara
   fimpara

   para i de 1 ate n faca
      escreval("V1[",i:1,"]:",v1[i])
   fimpara
fimprocedimento

Inicio
   car<-"*************"
   preenchervetores
   mostrarvetores
   mostrarinterseccao
   diferenca
   uniao
   ordenacao

Fimalgoritmo