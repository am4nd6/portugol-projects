Algoritmo "Departamento de trânsito"

Var

   ano_atual, ano_de_nascimento, idade, apto: inteiro

Inicio

      Escreval("-------------------------------")
      Escreval("   Departamento de trânsito")
      Escreval("-------------------------------")
      
      Escreva("Ano atual (yyyy): ")
      Leia(ano_atual)
      Escreva("Ano de nascimento (yyyy): ")
      Leia(ano_de_nascimento)
      idade <- ano_atual - ano_de_nascimento
      
      Escreval("")
      Escreval("----------- STATUS -----------")
      Escreval("IDADE:", idade, " ANOS")
      
      Se(idade>=18) entao
        Escreval("APTO A TIRAR A CARTEIRA DE HABILITAÇÃO!")
      Senao
        Escreval("INAPTO A TIRAR A CARTEIRA DE HABILITAÇÃO!")
      FimSe
      
      Escreval("------------------------------")

Fimalgoritmo