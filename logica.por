programa {
    funcao inicio() {
        cadeia turmas[10]     // Limite para até 10 turmas
        cadeia alunos[10][10] // Limite para até 10 alunos por turma
        real notas[10][10]    // Limite para até 10 notas por aluno
        cadeia cadAluno, cadTurma        
        inteiro i, j, k
        inteiro numTurmas = 0 // Contador de turmas
        inteiro numAlunos[10] // Array para contar alunos por turma

        faca {
            escreva("Informe o nome da turma: ")
            leia(turmas[numTurmas])

            j = 0 // Inicia o índice de alunos para a turma atual

            faca {
                escreva("Informe o nome do aluno(a): ")
                leia(alunos[numTurmas][j])  // Atribui o nome do aluno no índice j da turma numTurmas
                
                escreva("Informe a nota de ", alunos[numTurmas][j], ": ")
                leia(notas[numTurmas][j])   // Atribui a nota do aluno no índice j da turma numTurmas

                j = j + 1 // Incrementa o índice para o próximo aluno

                escreva("Cadastrar a nota de mais um aluno(a)(s/n)? ")
                leia(cadAluno)
            } enquanto (cadAluno == "s" e j < 10) // Limita até 10 alunos por turma

            numAlunos[numTurmas] = j // Armazena o número de alunos cadastrados na turma
            numTurmas = numTurmas + 1 // Incrementa o contador de turmas

            escreva("Cadastrar uma nova turma(s/n)? ")
            leia(cadTurma)
        } enquanto (cadTurma == "s" e numTurmas < 10) // Limita até 10 turmas

        // Exibir todas as turmas e os alunos cadastrados
        para (i = 0; i < numTurmas; i++) {
            escreva("Turma: ", turmas[i], "\n")
            para (k = 0; k < numAlunos[i]; k++) {  // Usa o contador de alunos para exibir apenas os cadastrados
                escreva("  Aluno: ", alunos[i][k], " Nota: ", notas[i][k], "\n")
            }
        }
    }
}
