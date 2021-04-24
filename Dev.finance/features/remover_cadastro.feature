#language: pt

Funcionalidade: remover_cadastro
    sendo um usuario
    Quero fazer remover um cadastro 
    Para tomar nota das minhas contas

Cenario: Remover transação    

    Dado que acesso a pagina principal com uma transação cadastrado.
    Quando aciono o ícone remover.
    Então deve ser removido a transação.