#language: pt

Funcionalidade: Realizar um pesquisa na lista de usuário 

   Eu COMO um usuario do whatsapp web
    QUERO pesquisar um contato 
    
    Eu COMO usuário do whatsapp web
    QUERO visualizar o meu status 

    Cenário: Pesqusiar um contato 
        Dado que eu entrar no site do whatsapp web
        E clico no botão de pesquisar 
        Então irei digitar o nome do contatto para verificar se eu tenho ele na minha lista de contato

    Cenário: Verficar conversa arquivada  
       Dado que eu tenha uma conversa arquivada
       Quando tiver um status adicionado irei visualizalo
       Então irei fechar  
    