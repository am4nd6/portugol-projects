Algoritmo "Novo salário"

Var

   nome: caractere
   salario, novosalario: real
   dependentes: inteiro


Inicio

      Escreva("Qual o nome do funcionário(a)? ")
      Leia(nome)
      Escreva("Qual o salário do funcionário(a)? R$")
      Leia(salario)
      Escreva("Qual é a quantidade de dependentes? ")
      Leia(dependentes)

      Escolha dependentes
      
      Caso 0
        novosalario <- salario*1.05
      Caso 1,2,3
        novosalario <- salario*1.10
      Caso 4,5,6
        novosalario <- salario*1.15
      OutroCaso
         novosalario <-salario*1.18
      FimEscolha
      
      Escreval("")
      Escreva("O novo salário de ", nome, " será de R$", novosalario)



Fimalgoritmo