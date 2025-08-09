Algoritmo "Detector de pesado"

Var

   cont: inteiro
   maior_kg, peso: real
   nome, nome_do_maior_kg: caractere

Procedimento Topo()
Inicio

   Escreval("--------------------------------------------")
   Escreval("     D E T E C T O R   DE   P E S A D O"     )
   Escreval("Maior peso até agora:", maior_kg, "Kg")
   Escreval("--------------------------------------------")

FimProcedimento

Inicio

   maior_kg <- 0
   nome_do_maior_kg <- ""

   Topo()

   Para cont <- 1 ate 5 faca
      Escreva("Digite o nome: ")
      Leia(nome)
      Escreva("Digite o peso de ", nome, ": ")
      Leia(peso)

      Se(peso > maior_kg) entao
         maior_kg <- peso
         nome_do_maior_kg <- nome
      FimSe

      LimpaTela
      Topo()
      
   FimPara
   
   Escreva("A pessoa mais pesada foi ", nome_do_maior_kg, ", com", maior_kg, " quilos.")

Fimalgoritmo