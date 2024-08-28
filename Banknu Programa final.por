programa {
  funcao inicio() {
    
  //VARIAVEIS LOGIN / REGISTRO

  inteiro  laco, Conta, Verifica

  cadeia Nome, Senha, Nome2, Senha2, login

  laco = 0
  Conta = 0
  Verifica = 0

  //VARIAVEIS BANCO

  inteiro Saldo, Deposito, Saque, Menu

  cadeia  Extrato, Controlador

  real investimento, rendimento,meses
 
  Saldo = 0
  Extrato = ""

  //LOGIN / REGISTRO 
  
  enquanto(laco < 1){
  
  escreva("===================================================================================BEM VINDO BANKNU==============================================================================================")
  
  escreva("\n\nAperte 1, para fazer LOGIN")
  
  escreva("\n\nAperte 2, para criar SUA CONTA")
  
  escreva("\n\nAperte 3, para SAIR")
  
  escreva("\n\n=================================================================================================================================================================================================")
  
  escreva("\n")
  leia(login)

  se(login == 1){

    se(Conta == 1){ 
      
      limpa()
      
      enquanto(Verifica == 0){
      
      escreva("===========================================================================================LOGIN================================================================================================")

      escreva("\n\nDigite seu NOME COMPLETO : ")
      leia(Nome2)

      escreva("\nDigite sua SENHA : ")
      leia(Senha2)

      se(Senha2 == Senha e Nome2 == Nome){
        
        Verifica ++
        

      }

      senao se(Senha2 != Senha ou Nome2 != Nome){
        
        limpa()

        escreva("\nUsuario ou senha incorreto, Tente novamente \n")
      }

      }
    
    }    
  
    senao se(Conta != 1){
      
      limpa()

      escreva("Você não possui uma conta em nosso banco. Para criar uma, pressione 2\n\n")
    }
  
    limpa()

  }

  senao se (login == 2){

    se(Conta == 0){

      limpa()

      escreva("======================================================================================REGISTRO==================================================================================================")

      Conta ++

      escreva("\nDIGITE SEU NOME : ")
      leia(Nome)

      escreva("\nCRIE UMA SENHA :  : ")
      leia(Senha)

      limpa()
      
      escreva("CONTA CRIADA\n")
      
    
    }

    senao se (Conta != 0){

      limpa()
      
      escreva("Você já possui uma conta em nosso banco. Por favor, faça o login para continuar.\n")

    }

  }

  senao se(login == 3){ 

    limpa()
    
    laco++

  }
  
  senao{
    
    limpa()
    escreva("OPÇÃO ERRADA. DIGITE NOVAMENTE\n")
  }
  
  
  
  //BANCO
  
  enquanto(Verifica == 1){
    
    limpa()

    escreva("===========================================================================================BANKNU================================================================================================")
    
    escreva("\nOLA : ", Nome)
    escreva("\nSALDO = ", Saldo)
    
    escreva("\n\n1 SAQUE ")
    escreva("\n2 DEPOSITO")
    escreva("\n3 EXTRATO ")
    escreva("\n4 INVESTIMENTO ")
    escreva("\n5 SAIR \n")

    escreva("\n=================================================================================================================================================================================================")
    
    escreva("\n\nESCOLHA --> ")
    leia(Menu)
  
    escolha(Menu){

      caso 1 :

        //SAQUE
        
        limpa()

        escreva("Por favor, insira sua senha para acessar a seção de saque : ")
        leia(Senha2)

        enquanto(Senha2 != Senha){
          
          limpa()

          escreva("Senha inválida. Por favor, tente novamente :")
          leia(Senha2)
        }
        
        se(Senha2 == Senha){
        
          limpa()
          
          escreva("Saldo : ", Saldo)
          
          escreva("\nDigite o valor que você deseja retirar : ")
          leia(Saque)

          se(Saque > Saldo ou Saque <= 0){

            limpa()
            
            enquanto(Saque > Saldo ou Saque <= 0){
            
            escreva("\nSaldo indisponível para retirada ")
          
            escreva("\nSaldo : ", Saldo)
            escreva("\nPor favor, insira novamente o valor que deseja sacar : ")
            leia(Saque)

            limpa()

            }
          
          }

          senao{

            limpa()
            
            Saldo = Saldo - Saque
        
            escreva("\nSaque efetuado, Seu novo saldo é de : ", Saldo)

            Saque = Saque + "Saque ------------ R$" + Saque + "\n"
            
            escreva("\nPressione Enter para prosseguir ")
            leia(Controlador)
          
            limpa()
          }

        }

      pare

      caso 2 :
        
        //DEPOSITO
        
        limpa()

        escreva("Qual valor você deseja depositar : ")
        leia(Deposito)
       
        enquanto(Deposito <= 0){

        limpa() 

        escreva("Valor incorreto. Insira o valor novamente :")
        leia(Deposito)

        }
        
        se (Deposito > 0){

          Saldo = Saldo + Deposito
          
          Extrato = Extrato + "DEPOSITO ------------ R$" + Deposito + "\n"

          limpa()
          
          escreva("Deposito efetuado, Seu novo saldo é de : ", Saldo)

          escreva("\nPressione Enter para prosseguir")
          leia(Controlador)

        }
        
      pare

      caso 3 :

       //EXTRATO
       
       limpa()

        escreva(Extrato)
        escreva("Aperte ENTER para continuar")
        leia(Controlador)
        limpa()

      pare

      caso 4 :
      
        //INVESTIMENTO
      
        limpa()

        escreva("Digite sua senha : ")
        leia(Senha2)
      
        enquanto(Senha2 != Senha){

          limpa()

          escreva("Senha errada digite novamente : ")
          leia(Senha2)
        }

        limpa()

        escreva("Quanto quer investir : ")
        leia(investimento)

        se(investimento > Saldo){
          
          limpa()
          
          escreva("Saldo insuficiente ")
          escreva("\n\nAperte enter para continuar\n")
        }

        senao{
          
          limpa()

          escreva("Digite por quantos meses deseja investir : ")
          leia(meses)

          Saldo = Saldo - investimento
          
          para(inteiro contador = 0; contador<meses ; contador ++){

            rendimento = investimento * 1.02
            investimento = rendimento
          
          }

          limpa()

          Saldo = Saldo + investimento
          escreva("O rendimento final foi de R$ : ", investimento)
          escreva("\nAperte enter para continuar ")
          leia(Controlador)
        }

      pare
      
      caso 5 : 

        //SAIR
        
        limpa()
        
        Verifica = Verifica - 1

      pare

    }

  }
  
  }
  
  }
}
