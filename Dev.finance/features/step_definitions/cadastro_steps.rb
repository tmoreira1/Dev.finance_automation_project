

Dado('que acesso a pagina principal.') do
    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
end
  
Quando('aciono o botão de nova transação.') do
    find("#BB").click
end
  
Então('deve ser exibido o pop-up de cadastro de nova transação.') do
    expect(page).to have_css ".modal"
    
end
  

Dado('que acesso o pop up de cadastro de transação.') do
    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
    find("#BB").click
end
  

Quando('submeto o adastro com o seguinte formulario:') do |table|

    transaction = table.hashes.first
    
    find("#description").set transaction[:description]
    find("#amount").set transaction[:value]
    find("#date").set transaction[:date]


    click_button "Salvar"

  end
  
Então('deve ser exibido a nova transação na pagina principal.') do
    expect(page).to have_css ".description"
    expect(page).to have_css ".income"
    expect(page).to have_css ".date"
end
  
  
 Então('deve ser exibido um pop-up de alerta com o seguinte texto Por favor, preencha todos os campos.') do
    page.driver.browser.switch_to.alert.accept
   
 end
  

