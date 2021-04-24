#language: pt

Funcionalidade: Cadastro
    sendo um usuario
    Quero fazer um cadastro 
    Para tomar nota das minhas contas
    
Cenario: Abrir pop up de nova transação 

    Dado que acesso a pagina principal.
    Quando aciono o botão de nova transação.
    Então deve ser exibido o pop-up de cadastro de nova transação.

Cenario: Realizar transação 

    Dado que acesso o pop up de cadastro de transação.
    Quando submeto o adastro com o seguinte formulario:

    |description|value |date|
    |Qa ninja   |450,00|999 |

    Então deve ser exibido a nova transação na pagina principal.



Esquema do Cenario: Tentativa de cadastro de transação

    Dado que acesso o pop up de cadastro de transação.
    Quando submeto o adastro com o seguinte formulario:

    |description         |<value_input> |<date_input>|
    |<description_input> |450,00        |999         |

    Então deve ser exibido um pop-up de alerta com o seguinte texto Por favor, preencha todos os campos.

    Exemplos:
    |description_input|value_input |date_input|
    |                 |450,00      |999       |
    |Qa ninja         |            |999       |
    |Qa ninja         |450,00      |          |




