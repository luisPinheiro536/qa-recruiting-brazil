
Dado("que eu esteja no site do whatsapp web") do
    visit 'https://web.whatsapp.com/'
  end
  
  Quando("clicar em Nova Conversa") do
    find(:xpath, "/html/body/div[1]/div/div").click
  end
  
  Quando("clicar em novo grupo") do
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/header/div[2]/div/span/div[3]/div/span").click
  end
  
  Então("irei adicionar um contato ao grupo") do
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/header/div[2]/div/span/div[3]/span/div/ul/li[1]/div").click
    find(:xpath, "/html/body/div[1]/div/div/div[2]/div[1]/span/div/span/div/div/div[2]/div[1]/div/div/div[14]/div/div/div[2]").click
  end

  Quando("for adicionado o contato irei confirmar") do
    find(:xpath, "/html/body/div[1]/div/div/div[2]/div[1]/span/div/span/div/div/span/div").click
  end
  
  Então("irei adicionar o nome do grupo") do
    find(:xpath, "/html/body/div[1]/div/div/div[2]/div[1]/span/div/span/div/div/div[2]/div/div[2]/div/div[2]").set 'stark'
  end

  Quando("for adicionado o nome do grupo irei confirmar") do
    find(:xpath, "/html/body/div[1]/div/div/div[2]/div[1]/span/div/span/div/div/span/div/div/span").click
  end
  


  Dado("que eu tenha adicionado um status no whatsapp web") do
    visit 'https://web.whatsapp.com/'
  end
  
  Quando("clicar em no botão de status") do  
    find(:xpath, "/html/body/div[1]/div/div/div[3]/div/header/div[2]/div/span/div[1]").click
  end
  
  Então("irei fechar ") do
    #find(:xpath, "/html/body/div[1]/div/span[3]/div/span/div/div/div[1]/div[1]").click
    find(:xpath, "/html/body/div[1]/div/span[3]/div/span/div/div/button/span").click
end
  



