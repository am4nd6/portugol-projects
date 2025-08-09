Algoritmo "Converter um número decimal em binário"

Var
   numero:inteiro
   resultado:caractere

funcao numeroembinario(numero:inteiro):caractere // Função para converter o número em binário
var i:inteiro
   nembinario:caractere
inicio
   nembinario<-""
   i<-numero
   enquanto (i>0) faca
      se (i%2=0) entao
         nembinario<- nembinario+"0"
      senao
         nembinario<- nembinario+"1"
      fimse
      i<- i\2
   fimenquanto

   retorne nembinario
fimfuncao

funcao inverter(texto:caractere):caractere  // Função para inverter a string
var i:inteiro
   invertida:caractere
inicio
   invertida<-""
   para i de compr(texto) ate 1 passo -1 faca
      invertida<-invertida+copia(texto,i,1)
   fimpara

   retorne invertida

fimfuncao

Inicio
   // Input
   escreva("Digite um número decimal: ")
   leia(numero)

   // Processing

   resultado<-numeroembinario(numero)

   // Output
   escreva("O número", numero, " em decimal é ", inverter(resultado), ".")

Fimalgoritmo