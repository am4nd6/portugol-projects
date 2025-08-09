Algoritmo "Analisador de Strings"

Var

   nome: Caractere

Funcao NomeAoContrario(n: Caractere): Caractere

Var

   nome_ao_contrario: Caractere
   c: Inteiro

Inicio

   nome_ao_contrario <- ""

   Para c <- Compr(n) ate 1 passo -1 faca

      nome_ao_contrario <- nome_ao_contrario + Copia(Maiusc(nome), c, 1))

   FimPara

   Retorne nome_ao_contrario

FimFuncao

Inicio

   Escreva("Digite seu nome: ")
   Leia(nome)

   EscrevaL("O total de letras do seu nome:", Compr(nome))
   EscrevaL("Seu nome em maiúsculas é: ", Maiusc(nome))
   EscrevaL("Seu nome em minúsculas é: ", Minusc(nome))
   EscrevaL("A primeira letra do seu nome é: ", Copia(nome, 1, 1))
   EscrevaL("A última letra do seu nome é: ", Copia(Maiusc(nome), Compr(nome), 1))
   EscrevaL("Seu nome tem a letra A na posição:", Pos("A", Maiusc(nome)))
   Escreval("O código da letra A é:", Asc("A"))
   EscrevaL("A letra do código 65 é: ", Carac(65))
   EscrevaL("O seu nome ao contrário é: ", NomeAoContrario(nome))

Fimalgoritmo