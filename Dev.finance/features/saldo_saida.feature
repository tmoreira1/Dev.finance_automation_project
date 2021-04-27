#language: pt

Funcionalidade: saldo_entrada
    sendo um usuario
    Quero verificar meu saldo de saida 
    Para tomar nota das minhas contas

Cenario: Verificar saldo de entrada

    Dado que tenho uma transação unitaria de saida.

       |description|value  |date|
       |energia    |-690,00|999 |
       
    Quando verifico o campo de total.
    Então deve ser exibido o valor da transação na campo saida da pagina principal.