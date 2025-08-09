Algoritmo "Aniversário aprimorado"

Var

   ano_atual, ano_de_nascimento, idade: inteiro

Inicio

      Escreva("Em que anos estamos? ")
      Leia(ano_atual)
      Escreva("Em que ano você nasceu? ")
      Leia(ano_de_nascimento)
      idade <- ano_atual - ano_de_nascimento
      Escreval("Você terá", idade, " anos em", ano_atual)
      Se(idade>=18) entao
        Escreva("E você terá atingido a maioridade!")
      FimSe

Fimalgoritmo