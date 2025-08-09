Algoritmo "Dia da semana de uma data"

Var

   dia,mes,ano: inteiro
   diasdomes: vetor[1..12] de inteiro
   diadassemanas: vetor[1..7] de  caractere

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

procedimento preencherdiasdasemana
inicio

   diadassemanas[1]<-"Segunda-Feira"
   diadassemanas[2]<-"Terça-Feira"
   diadassemanas[3]<-"Quarta-Feira"
   diadassemanas[4]<-"Quinta-Feira"
   diadassemanas[5]<-"Sexta-Feira"
   diadassemanas[6]<-"Sábado"
   diadassemanas[7]<-"Domingo"

fimprocedimento

funcao ehbissexto(ano:inteiro):logico
var retorno:logico
inicio
   retorno<-falso
   se(((ano%4=0) e (ano%100<>0)) ou (ano%400=0)) entao  // Função que vai retornar se o ano é bissexto ou não
      retorno<-verdadeiro
   fimse
   retorne retorno
fimfuncao

funcao contador(d,m,a:inteiro):inteiro // Função que calcula a quantidade de dias desde o início até a data informada
var totaldedias, i:inteiro
inicio
   totaldedias<-0
   preenchervetores
   para i de 1 ate a-1 faca      // Este para vai somar a quantidade de dias até o ano antes do ano informado (ano-1)
      se(ehbissexto(i)) entao      // Verificação se o ano é bissexto
         totaldedias<-totaldedias+366
      senao
         totaldedias<-totaldedias+365
      fimse
   fimpara

   para i de 1 ate m-1 faca   // Este para vai somar a quantidade de dias até o mês antes do mês informado (mes-1)
      totaldedias<-totaldedias+diasdomes[i]
      se ((i=2) e (ehbissexto(ano))) entao // Verificação se o mês de fevereiro é bissexto
         totaldedias<-totaldedias+1
      fimse
   fimpara

   totaldedias<-totaldedias+d // Agora ele vai somar os dias do mês restante
   retorne totaldedias

fimfuncao


funcao diadasemana(dias:inteiro):caractere
var
   retorno:caractere
   semanas_completas, dias_completos:inteiro
inicio
   retorno<-""
   semanas_completas<-0;
   dias_completos<-0;

   preencherdiasdasemana

   semanas_completas<-(dias\7)
   dias_completos<-(dias-(semanas_completas*7))

   se(dias_completos=0) entao
      dias_completos<-7
   fimse

   retorno<-diadassemanas[dias_completos]

   retorne retorno
fimfuncao

Inicio

   escreva("Digite o dia: ")
   leia(dia)
   escreva("Digite o mês: ")
   leia(mes)
   escreva("Digite o ano: ")
   leia(ano)
   
   escreval
   escreval("O dia da semana do dia", dia, "/",mes:1,"/",ano:1," é: ", diadasemana(contador(dia,mes,ano)),".")

Fimalgoritmo