Algoritmo "Empréstimo"

Var

   emprestimo, valor: real
   parcelas: inteiro

Inicio

      Escreva("Qual o valor do empréstimo? R$")
      Leia(emprestimo)
      Escreva("Quantas parcelas você irá pagar? " )
      Leia(parcelas)
      valor <- (1.2*emprestimo)/parcelas
      Escreva("Você irá pagar", parcelas, " parcelas de R$", valor)


Fimalgoritmo