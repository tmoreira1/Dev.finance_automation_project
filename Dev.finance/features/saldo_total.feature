#language: pt

Funcionalidade: saldo_total
    sendo um usuario
    Quero verificar meu saldo total 
    Para tomar nota das minhas contas

Cenario: Verificar saldo total unitario positivo

    Dado que tenho uma transação unitaria.

       |description|value |date|
       |Qa ninja   |450,00|999 |
       
    Quando verifico o campo de total.
    Então deve ser exibido o valor da transação na campo total da pagina principal.



    