// —> Conversão de moedas :
//  Crie um conversor de moedas que permite o usuário digitar o valor que deseja converter e dê a opção de 3 moedas internacionais
programa {
  
  real moeda1
  real valor1
  real moeda2
  real valor2
  real convert
  cadeia moeda


  funcao inicio() {
    escreva("Conversor de moedas! \n")
    Moeda1()
    Valor1()
    Moeda2()
    Converter()
  }


  funcao Moeda1(){
    
    escreva("Escolha a sua moeda:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda1)
    limpa()
  }

  funcao Valor1(){
    escreva("Qual valor desejas converter?")
    leia(valor1)
    limpa()
  }

  funcao Moeda2(){
    escreva("Escolha a moeda de conversão:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda2)
    limpa()
  }

  funcao Converter(){
    escolha(moeda1){
      caso 1: escolha(moeda2){
        caso 1:convert = valor1 * 1
        moeda="R$"
        pare
        caso 2:convert = valor1 * 0.2
        moeda="US$"
        pare
        caso 3:convert = valor1 * 0.19
        moeda="€"
        pare
        caso 4:convert = valor1 * 170.24 
        moeda="KZ"
      }

      pare

      caso 2: escolha(moeda2){
        caso 1:convert = valor1 * 4.86
        moeda="R$"
        pare
        caso 2:convert = valor1 * 1
        moeda="US$"
        pare
        caso 3:convert = valor1 * 0.93
        moeda="€"
        pare
        caso 4:convert = valor1 * 829 
        moeda="KZ"
      }

      pare

      caso 3: escolha(moeda2){
        caso 1:convert = valor1 * 5.19
        moeda="R$"
        pare
        caso 2:convert = valor1 * 1.06
        moeda="US$"
        pare
        caso 3:convert = valor1 * 1
        moeda="€"
        pare
        caso 4:convert = valor1 *  884.70 
        moeda="KZ"
      }

      pare

      caso 4: escolha(moeda2){
        caso 1:convert = valor1 * 0.0058
        moeda="R$"
        pare
        caso 2:convert = valor1 * 0.0012
        moeda="US$"
        pare
        caso 3:convert = valor1 * 0.0011
        moeda="€"
        pare
        caso 4:convert = valor1 * 1 
        moeda="KZ"
      }
    }
    escreva("O valor convertido fica em: ", moeda, convert)
  }
}
