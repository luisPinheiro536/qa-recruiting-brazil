#language: pt

Funcionalidade: Realizar configuração no aplicativo do whatsapp web
 
    Eu COMO um usuario do whatsapp web
    QUERO realizar a configuração 
    PARA melhorar o que eu desejo 

#Adicionar um novo Grupo
    Cenário: Adicionar um novo Grupo na lista de contato 
        Dado que eu esteja no site do whatsapp web
        E clicar em Nova Conversa
        E clicar em novo grupo 
        Então irei adicionar um contato ao grupo    
        Quando for adicionado o contato irei confirmar 
        Então irei adicionar o nome do grupo 
        Quando for adicionado o nome do grupo irei confirmar

@temp
#Verificar o status 
    Cenário: Visulizar o status 
       Dado que eu tenha adicionado um status no whatsapp web
       E clicar em no botão de status  
       Então irei fechar  
    