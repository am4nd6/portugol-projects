Algoritmo "prova"

Var

   car, opcao, tec:caractere
   mediadaturma:real
   nome: vetor[1..60] de caractere
   notas: vetor [1..60] de real
   qtd, numerodelinha: inteiro

procedimento linha(t:inteiro;c:caracter)
var i:inteiro
inicio
   para i de 1 ate t faca
      escreva(c)
   fimpara

   escreval
fimprocedimento

procedimento menu
inicio
   limpatela
   escreval
   escreval
   linha(numerodelinha,car)
   escreval(car,"              MENU              ",car)
   linha(numerodelinha,"-")
   escreval(car," 1. Sair                        ",car)
   escreval(car," 2. Preencher                   ",car)
   escreval(car," 3. Mostrar                     ",car)
   escreval(car," 4. Média                       ",car)
   escreval(car," 5. Menor elemento              ",car)
   escreval(car," 6. Ocorrência de um elemento   ",car)
   escreval(car," 7. Aumentar 2 pontos           ",car)
   linha(numerodelinha,car)
   escreva("Sua opção [1,7]: ")
   leia(opcao)

   escolha opcao
   caso "1"
      sair
   caso "2"
      preencher
   caso "3"
      mostrar
   caso "4"
      escreval("A média da turma é: ", media:2:1 )
      escreval
      escreva("Aperta uma tecla para continuar... ")
      leia(tec)
   caso "5"
      escreval("A menor nota da turma é:", menorelemento)
      escreval
      escreva("Aperta uma tecla para continuar... ")
      leia(tec)
   caso "6"
      ocorrencia
   caso "7"
      mais2pontos
   fimescolha
fimprocedimento

procedimento sair
inicio
   limpatela
   escreval("Tchau...")
fimprocedimento

procedimento preencher
var
   i: inteiro
   resp: caractere
inicio
   limpatela
   escreval(" CADASTRO DE ALUNOS ")
   escreval

   repita
      qtd<-qtd+1
      escreval
      escreva("Nome do [", qtd:1, "] aluno(a): ")
      leia(nome[qtd])

      escreva("Nota: ")
      leia(notas[qtd])

      escreval
      escreva("Cadastrar mais um aluno(a)(s/n): ")
      leia(resp)
   ate minusc(resp)="n"

   escreval
   escreval
   escreval("São ",qtd:1," aluno(s) cadastrado(s)!")

   escreval
   escreva("Aperta uma tecla para continuar... ")
   leia(tec)
fimprocedimento

procedimento mostrar
var i:inteiro
   tec:caractere
inicio
   limpatela
   escreval(" RELAÇÃO DE ALUNOS ")
   escreval
   linha(numerodelinha,car)
   se qtd<>0 entao
      para i de 1 ate qtd faca
         escreval("Nome do [", i:1, "] aluno(a): ",nome[i])
         escreval("Nota: ",notas[i]:4:2)
         linha(numerodelinha,car)
         escreval
      fimpara
   fimse

   escreval
   escreval("São ",qtd:1," aluno(s) cadastrado(s)!")

   escreval
   escreva("Aperta uma tecla para continuar... ")
   leia(tec)
fimprocedimento

funcao media:real
Var
   i: inteiro
   retorno: real
Inicio
   se qtd<>0 entao
      para i de 1 ate qtd faca
         mediadaturma<- mediadaturma+notas[i]
      fimpara
      retorno<-mediadaturma/qtd
   senao
      escreval
      escreval
      escreval("São ",qtd:1," aluno(s) cadastrado(s)!")
      retorno<-0
   fimse

   retorne retorno
fimfuncao

funcao menorelemento:real
Var i:inteiro
   menornota: real
Inicio
   menornota<-10
   para i de 1 ate qtd faca
      se notas[i]<menornota entao
         menornota<-notas[i]
      fimse
   fimpara
   retorne menornota
fimfuncao

procedimento ocorrencia
var
   nt:real
   i, total:inteiro
inicio
   total<-0
   limpatela
   escreva("Digite a nota que deseja procurar: ")
   leia(nt)
   escreval

   se (qtd<>0) entao
      para i de 1 ate qtd faca
         se (notas[i]=nt) entao
            escreval("Nome do [", i:1, "] aluno(a): ",nome[i])
            escreval("Nota: ",notas[i]:4:2)
            linha(numerodelinha,car)
            total <- total+1
            escreval
         fimse
      fimpara
   fimse

   escreval("A nota", nt, " foi encontrada", total, " vez(es).")
   escreval
   escreva("Aperta uma tecla para continuar... ")
   leia(tec)

fimprocedimento

procedimento mais2pontos
var i:inteiro
Inicio
   limpatela
   se (qtd<>0) entao
      para i de 1 ate qtd faca
         notas[i] <- notas[i]+2
         se (notas[i]>10) entao
            notas[i] <- 10
         fimse
      fimpara
   fimse

   escreval("Pontos adicionados!")

   escreval
   escreva("Aperta uma tecla para continuar... ")
   leia(tec)
fimprocedimento


Inicio

   car<-"-"
   qtd<-0
   mediadaturma<-0
   numerodelinha<-34

   repita
      menu
   ate opcao="1"

Fimalgoritmo