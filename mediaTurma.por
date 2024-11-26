// Turma com a melhor media
programa {
    funcao inicio() {
        cadeia turmas[100] // Vetor para armazenar nomes de até 100 turmas
        real notas[100][100] // Vetor para armazenar notas, com até 100 turmas e 100 alunos cada
        inteiro qtdAlunos[100] // Vetor para armazenar a quantidade de alunos em cada turma

        real nota, somaNotas, mediaTurma, melhorMedia = -1
        cadeia melhorTurma, turma, cadTurma, cadNota
        inteiro i, j, numTurmas = 0

        faca {
            escreva("Informe o nome da turma: ")
            leia(turma)
            turmas[numTurmas] = turma // Armazena o nome da turma

            somaNotas = 0
            inteiro numAlunos = 0

            faca {
                escreva("Informe a nota do aluno: ")
                leia(nota)
                notas[numTurmas][numAlunos] = nota // Armazena a nota no vetor de notas
                somaNotas = somaNotas + nota
                numAlunos = numAlunos + 1

                escreva("Cadastrar a nota de mais um aluno(a)(s/n)? ")
                leia(cadNota)
            } enquanto (cadNota == "s")

            qtdAlunos[numTurmas] = numAlunos // Armazena a quantidade de alunos da turma
            mediaTurma = somaNotas / numAlunos // Calcula a média da turma

            escreva("A média da turma ", turma, " é: ", mediaTurma, "\n")

            se (mediaTurma > melhorMedia) {
                melhorMedia = mediaTurma
                melhorTurma = turma
            }

            numTurmas = numTurmas + 1

            escreva("Cadastrar uma nova turma(s/n)? ")
            leia(cadTurma)
        } enquanto (cadTurma == "s")

        // Exibe a turma com a melhor média
        escreva("A turma com a melhor média é: ", melhorTurma, " com média ", melhorMedia, "\n")
    }
}
