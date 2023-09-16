// —> Conversão de moedas :
//  Crie um conversor de moedas que permite o usuário digitar o valor que deseja converter e dê a opção de 3 moedas internacionais
programa {
  
  real moeda1
  real valor1
  real moeda2
  real valor2
  real convert


  funcao inicio() {
    escreva("Conversor de moedas! \n")
    Moeda1()
    Valor1()
    Moeda2()
    Converter()
    escreva(convert)
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
    escreva("O valor convertido fica em: ")
    escolha(moeda1){
      caso 1: escolha(moeda2){
        caso 1:convert = valor1 * 1
        escreva("R$")
        pare
        caso 2:convert = valor1 * 0.2
        escreva("US$")
        pare
        caso 3:convert = valor1 * 0.19
        escreva("€")
        pare
        caso 4:convert = valor1 * 170.24 
        escreva("KZ")
      }


      caso 2: escolha(moeda2){
        caso 1:convert = valor1 * 4.86
        escreva("R$")
        pare
        caso 2:convert = valor1 * 1
        escreva("US$")
        pare
        caso 3:convert = valor1 * 0.93
        escreva("€")
        pare
        caso 4:convert = valor1 * 829 
        escreva("KZ")
      }


      caso 3: escolha(moeda2){
        caso 1:convert = valor1 * 5.19
        escreva("R$")
        pare
        caso 2:convert = valor1 * 1.06
        escreva("US$")
        pare
        caso 3:convert = valor1 * 1
        escreva("€")
        pare
        caso 4:convert = valor1 *  884.70 
        escreva("KZ")
      }


      caso 4: escolha(moeda2){
        caso 1:convert = valor1 * 0.0058
        escreva("R$")
        pare
        caso 2:convert = valor1 * 0.0012
        escreva("US$")
        pare
        caso 3:convert = valor1 * 0.0011
        escreva("€")
        pare
        caso 4:convert = valor1 * 1 
        escreva("KZ")
      }
    }
  }
}
