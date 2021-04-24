#language: pt

Funcionalidade: saldo_total
    sendo um usuario
    Quero verificar meu saldo total 
    Para tomar nota das minhas contas

Cenario: Verificar saldo total unitario 

    Dado que tenho uma transação unitaria.
    Quando verifico o campo de total.
    Então deve ser exibido o valor da transação na campo total da pagina principal.


Cenario: Verificar saldo total com dois saldos 

    Dado que tenho duas transação.
    Quando verifico o campo de total.
    Então deve ser exibido o valor das duas transação na campo total da pagina principal.


Cenario: Verificar saldo total negativo 

    Dado que tenho uma transação unitaria.
    Dado que tenho uma transação unitaria negativa maior que o valor da transação unitaria positiva
    Quando verifico o campo de total.
    Então deve ser exibido o valor negativo resultante das duas transação no campo total da pagina principal.