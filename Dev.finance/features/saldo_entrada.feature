#language: pt

Funcionalidade: saldo_entrada
    sendo um usuario
    Quero verificar meu saldo de entrada 
    Para tomar nota das minhas contas

Cenario: Verificar saldo de entrada

    Dado que tenho uma transação unitaria de entrada.

       |description|value |date|
       |Qa ninja   |1500,00|999 |
       
    Quando verifico o campo de total.
    Então deve ser exibido o valor da transação na campo entrada da pagina principal.