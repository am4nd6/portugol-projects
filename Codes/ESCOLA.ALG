Algoritmo "Escola"

Var

   alunos, contador: inteiro
   nome, melhor_aluno: caractere
   nota, maior_nota: real

Inicio

      maior_nota <- 0
      contador <- 1
      
      EscrevaL("----------------------------------")
      EscrevaL("      ESCOLA SANTA PACIÊNCIA")
      EscrevaL("----------------------------------")
      Escreva("Quantos alunos a turma tem? ")
      Leia(alunos)
      
      Se(alunos < 0) entao
        Repita
          Escreval("Valor inválido! Tente novamente.")
          Escreva("Quantos alunos a turma tem? ")
          Leia(alunos)
        Ate (alunos >0)
      FimSe

      Enquanto (contador <= alunos) faca
        Escreva("Nome do", contador, "º aluno(a): ")
        Leia(nome)
        Escreva("Nota de ", nome, ": ")
        Leia(nota)

        Se(nota > maior_nota) entao
          maior_nota <- nota
          melhor_aluno <- nome
        FimSe
        
        contador <- contador + 1
      
      FimEnquanto
      
      Escreva("O melhor aproveitamento foi de ", melhor_aluno, " com a nota", maior_nota)

Fimalgoritmo