// —> Sistema de login: 
// Construa um sistema de login e verifique se as credenciais estão corretas.
// Se as credenciais estiverem erradas em 3 tentativas, bloqueie o usuário.
programa {

  inclua biblioteca Util --> u

  cadeia usuario
  cadeia usuarioCheck
  cadeia senha
  cadeia senhaCheck
  inteiro cadastroCheck
  inteiro tentativas = 2

  funcao inicio() {
    escreva("Login VNW\n")
    Cadastro()
  }

  funcao Cadastro(){
    escreva("Olá, seja bem vindo(a) ao banco de dados VNW!\n")
    u.aguarde(2000)
    escreva("Voce já tem um cadastro?\n")
    escreva("1- Sim\n")
    escreva("2- Não\n")
    leia(cadastroCheck)
    escolha(cadastroCheck){
      caso 1: Acesso()
      pare
      caso 2:{
        escreva("Vamos cadastrar um novo usuário para você!\n")
        escreva("Escreva seu nome de usuário:\n")
        leia(usuario)
        escreva("confirme seu nome de usuário:\n")
        leia(usuarioCheck)
        enquanto(usuarioCheck != usuario){
          escreva("Os nomes de usuario não coincidem, tente novamente!")
          escreva("confirme seu nome de usuário:\n")
          leia(usuarioCheck)
        }
        u.aguarde(1300)
        escreva("Escreva sua senha: ")
        leia(senha)
        escreva("\nconfirme sua senha: ")
        leia(senhaCheck)
        enquanto(senhaCheck != senha){
          escreva("As senhas não coincidem, tente novamente!")
          escreva("\nconfirme sua senha: ")
          leia(senhaCheck)
        }
        u.aguarde(1500)
        escreva("Usuário cadastrado com sucesso!\n")
        u.aguarde(2000)
      }
    }
    Acesso()
  }


  funcao Acesso(){
    limpa()
    escreva("Você está na área de acesso.\n")
    u.aguarde(1000)
    escreva("Escreva seu usuario:\n")
    leia(usuario)
    escreva("Escreva sua senha:\n")
    leia(senha)
    limpa()
    enquanto(senha != senhaCheck){
      se(tentativas==0){
        usuarioBloqueado()
      }
      escreva("Usuario ou senha incorretos\n")
      escreva("Você tem mais ", tentativas, " tentativas.\n")
      u.aguarde(800)
      escreva("Escreva seu usuario:\n")
      leia(usuario)
      escreva("Escreva sua senha:\n")
      leia(senha)
      limpa()
      tentativas--
    }
    u.aguarde(1600)
    escreva("Bem Vindo(a) ao sistema de Banco de dados VNW!\n")
    u.aguarde(2000)
}

  funcao usuarioBloqueado(){
    escreva("Seu usuário foi bloqueado, crie um novo usuário ou tente novamente em 72 horas.\n")
    u.aguarde(3500)
    limpa()
    inicio()
  }
}
