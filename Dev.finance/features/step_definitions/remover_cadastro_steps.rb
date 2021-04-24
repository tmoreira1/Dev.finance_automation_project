
Dado('que acesso a pagina principal com uma transação cadastrado.') do
    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
    find("#BB").click
    find("#description").set "Qa ninja"
    find("#amount").set "450,00"
    find("#date").set "999"

    click_button "Salvar"
  end
  
  Quando('aciono o ícone remover.') do
    find("#remove").click
  end
  
  Então('deve ser removido a transação.') do
    page.assert_no_text('Qa ninja')
    expect(page.assert_no_text('Qa ninja')).to eq true 
   
    
  end
  