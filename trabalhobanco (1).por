programa {
  funcao inicio() {
    real investimento=0,renda=0,saldo=0,dep=0
    inteiro esc,saq,ex=0,meses=0,contador
    cadeia extrato = ""
    enquanto(esc!=0){
    escreva("______________________________________________________________\n")
    escreva("1-saque\n")
    escreva("2-deposito\n")
    escreva("3-extrato\n")
    escreva("4-saldo           R$",saldo,"\n")
    escreva("5-investimentos\n")
    escreva("0-Sair\n")
    escreva("_______________________________________________________________\n")
    leia(esc)
    limpa()
    se(esc<0 ou esc>5){
    pare
    }
    senao se(esc==1){
    escreva("digite o valor do saque:")
    leia(saq)
    enquanto(saq>saldo){
    escreva("saldo insuficiente! Digite outro valor\n")
    leia(saq)
    }
    saldo=saldo-saq
    extrato = extrato + "SAQUE----------R$" + saq + "\n"
    escreva("saque realizado com sucesso \n saldo atual:"+saldo+"\n")
    }
    senao se(esc==2){
    escreva("digite o valor do deposito:")
    leia(dep)
    se (dep<0){
    escreva("valor invalido! Digite outro valor: \n")
    leia(dep)
    }
    saldo=saldo+dep
    extrato = extrato + "DEPOSITO----------R$" + dep + "\n"
    escreva("deposito realizado com sucesso \n saldo atual:"+saldo+"\n")
    }
    senao se(esc==3){
    escreva(extrato)
    }
    senao se(esc==4){
    escreva(" saldo atual:"+saldo+"\n")
    }
    senao se(esc==5){
    escreva(" Digite o valor do investimento:")
    leia(investimento)
    enquanto(investimento<0){
    escreva("valor invalido!tente novamente.")
    leia(investimento)
    }
    escreva("Digite a quantidade de meses voce que deseja investir:")
    leia(meses)
    enquanto(meses<0){
    escreva("valor invalido!tente novamente.")
    leia(meses)
    }
    se(saldo>=investimento){
    saldo=saldo-investimento
    para(contador = 1;contador<=meses;contador++){
    renda = investimento * 1.02
    investimento=renda

    }
    escreva(meses," se passaram!\n")
    escreva("Seu rendimento foi de: R$",investimento,"\n")
    saldo=saldo+investimento
    }
    senao{
  escreva("Não autorizado\n")
    }
    }
        }

      }
    }




