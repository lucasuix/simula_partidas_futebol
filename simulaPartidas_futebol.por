programa {
  inclua biblioteca Util --> y

  funcao inicio() {
    cadeia vetor[6] = {"Vasco", "Santos", "Flamengo", "Coritiba", "Fluminense", "Cruzeiro"}, temp
    inteiro j

    para (inteiro i = 0; i < 6; i++) {
      j = y.sorteia(0,5)

      temp = vetor[i]
      vetor[i] = vetor[j]
      vetor[j] = temp
    }

    inteiro matrix[3][2]

    para (inteiro i = 0; i < 3; i++) {
      matrix[i][0] = y.sorteia(0,10) //SORTEIA UM RESULTADO DE GOLS DE 0 A 10 - TIME DA CASA
      matrix[i][1] = y.sorteia(0,10) //SORTEIA UM RESULTADO DE GOLS DE 0 A 10 - TIME VISITANTE

      escreva(vetor[i], " ", matrix[i][0], " x ", matrix[i][1], " ", vetor[i+3], " ")


      se (matrix[i][0] == matrix[i][1]) escreva("  EMPATE!\n")
      senao se (matrix[i][0] > matrix[i][1]) escreva(" ", vetor[i], " VENCEU!!!\n")
      senao escreva(" ", vetor[i+3], " VENCEU!!!\n")
    }

    escreva("\nSALDO DE GOLS:\n")
    para (inteiro i = 0; i < 3; i++) {
      escreva(vetor[i], ": ", matrix[i][0] - matrix[i][1], "\n" )
      escreva(vetor[i+3], ": ", matrix[i][1] - matrix[i][0], "\n" )
    }
  }
}