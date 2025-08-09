Algoritmo "Fatorial de um número usando função"

Var

   numero, resultado: Inteiro
   
Funcao ONumeroEPositivo(n: Inteiro): Logico
Inicio

   Se(n>0) entao
      Retorne verdadeiro
   Senao
      Retorne falso
   FimSe

FimFuncao

Procedimento Msg(x: Inteiro)
Inicio
   Escreva("O número", x, " é negativo. E não existe fatorial de número negativo. ")
   EscrevaL("Tente novamente.")
FimProcedimento

Funcao TransformarEmNumeroPositivo(a: Inteiro): Inteiro
Inicio

   Repita
      msg(a)
      Escreva("Digite um novo número: ")
      Leia(a)
   Ate(a>0)
   
   Retorne a
   
FimFuncao

Funcao Fatorial(x: Inteiro): Inteiro
Var
   c, s: Inteiro
Inicio

   s <- 1

   Para c <- 1 ate x faca

      s <- s * c

   FimPara

   Retorne s
FimFuncao

Inicio

   Escreva("Digite o número que deseja saber o seu fatorial: ")
   Leia(numero)
   
   Se(ONumeroEPositivo(numero) = falso) entao
      numero <- TransformarEmNumeroPositivo(numero)
   FimSe

   resultado <- Fatorial(numero)

   Escreva("O valor de", numero, "! é", resultado)

Fimalgoritmo