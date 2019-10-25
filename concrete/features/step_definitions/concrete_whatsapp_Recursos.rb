#Cenário: Pesqusiar um contato 
Dado("que eu entrar no site do whatsapp web") do
    visit 'https://web.whatsapp.com/'
  end
   
  Quando("clico no botão de pesquisar") do
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/div[1]/div/button/div[2]/span").click
  end

  Então("irei digitar o nome do contatto para verificar se eu tenho ele na minha lista de contato") do
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/div[1]/div/label/input").set 'stark'
  end


  #Cenário: Verficar conversa arquivada  
  Dado("que eu tenha uma conversa arquivada") do
    visit 'https://web.whatsapp.com/'
  end
  
  Quando("tiver um status adicionado irei visualizalo") do  
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/header/div[2]/div/span/div[3]").click
  end
  
  Então("irei fechar") do
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/header/div[2]/div/span/div[3]/span/div/ul/li[3]/div").click
  end
  