#language: pt

Funcionalidade: calculo_saldos
    sendo um usuario
    Quero verificar meu saldo
    Para tomar nota das minhas contas

Cenario: Verificar o calculo dos saldo

    Dado que tenho Tres transação.

       |description|value |date|
       |Qa ninja   |680,00|999 |
       |Qa ninja2  |77,00|999 |
       |Qa ninja2  |-99,00|999 |
       
    Quando verifico o campo de entrada, saida e total.
    Então deve ser exibido o valor de acordo com cada campo.



    