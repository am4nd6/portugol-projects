Algoritmo "Contar os dias entre duas datas"

Var

   dia1,dia2,mes1,mes2,ano1,ano2,total1,total2,diferenca:inteiro
   diasdomes: vetor[1..12] de inteiro   // Declaração de variáveis

funcao ehbissexto(ano:inteiro):logico
var retorno:logico
inicio
   retorno<-falso
   se((ano%4=0) e (ano%100<>0) ou (ano%400=0)) entao  // Função que vai retornar se o ano é bissexto ou não
      retorno<-verdadeiro
   fimse
   retorne retorno
fimfuncao

procedimento preenchervetores
inicio
   diasdomes[1] <- 31
   diasdomes[2] <- 28
   diasdomes[3] <- 31
   diasdomes[4] <- 30         // Procedimento para preencher a quantidade de dias de cada mês
   diasdomes[5] <- 31
   diasdomes[6] <- 30
   diasdomes[7] <- 31
   diasdomes[8] <- 31
   diasdomes[9] <- 30
   diasdomes[10] <- 31
   diasdomes[11] <- 30
   diasdomes[12] <- 31
fimprocedimento

funcao calcular_dias(dia,mes,ano:inteiro):inteiro // Funçaõ que calcula a quantidade de dias desde o início até a data informada
var totaldedias, i:inteiro
inicio
   totaldedias<-0
   preenchervetores
   para i de 1 ate ano-1 faca      // Este para vai somar a quantidade de dias até o ano antes do ano informado (ano-1)
      se(ehbissexto(i)) entao      // Verificação se o ano é bissexto
         totaldedias<-totaldedias+366
      senao
         totaldedias<-totaldedias+365
      fimse
   fimpara

   para i de 1 ate mes-1 faca   // Este para vai somar a quantidade de dias até o mês antes do mês informado (mes-1)
      totaldedias<-totaldedias+diasdomes[i]
      se ((i=2) e (ehbissexto(ano))) entao // Verificação se o mês de fevereiro é bissexto
         totaldedias<-totaldedias+1
      fimse
   fimpara

   totaldedias<-totaldedias+dia // Agora ele vai somar os dias do mês restante
   retorne totaldedias

fimfuncao

Inicio
   //Input das datas
   escreva("Digite o dia da 1° data: ")
   leia(dia1)
   escreva("Digite o mês da 1° data: ")
   leia(mes1)
   escreva("Digite o ano da 1° data: ")
   leia(ano1)

   escreval
   escreva("Digite o dia da 2° data: ")
   leia(dia2)
   escreva("Digite o mês da 2° data: ")
   leia(mes2)
   escreva("Digite o ano da 2° data: ")
   leia(ano2)

   // Processing
   total1<-calcular_dias(dia1,mes1,ano1)
   total2<-calcular_dias(dia2,mes2,ano2)


   se(total1>total2) entao
      diferenca<-total1-total2
   senao                         // Diferença entre as datas
      diferenca<-total2-total1
   fimse

   // Output
   escreval
   escreval("A quantidade de dias entre",dia1,"/",mes1:1,"/",ano1:1, " e", dia2,"/",mes2:1,"/",ano2:1," é de",diferenca," dias!")

Fimalgoritmo