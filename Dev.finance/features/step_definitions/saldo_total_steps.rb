
Dado('que tenho uma transação unitaria.') do
    
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        expect(page).to have_css ".modal"
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        find("#description").set "Qa ninja"
        find("#amount").set "450,00"
        find("#date").set "999"
        click_button "Salvar"
        expect(page).to have_css ".description"
        expect(page).to have_css ".income"
        expect(page).to have_css ".date"

    
  end
  
  Quando('verifico o campo de total.') do
    expect(page).to have_css "#totalDisplay"

  end
  
  Então('deve ser exibido o valor da transação na campo total da pagina principal.') do
    alert = find("#totalDisplay")
    expect(alert.text).to eql "R$ 450,00"
  end


  Dado('que tenho duas transação.') do
    
    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        expect(page).to have_css ".modal"
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        find("#description").set "Qa ninja"
        find("#amount").set "450,00"
        find("#date").set "999"
        click_button "Salvar"
        find("#BB").click
        expect(page).to have_css ".modal"
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        find("#description").set "Qa ninja 2"
        find("#amount").set "100,00"
        find("#date").set "999"
        click_button "Salvar"


  end
  
  Então('deve ser exibido o valor das duas transação na campo total da pagina principal.') do
    alert = find("#totalDisplay")
    expect(alert.text).to eql "R$ 550,00"
  end
  

  Dado('que tenho uma transação unitaria negativa maior que o valor da transação unitaria positiva') do

    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        expect(page).to have_css ".modal"
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        find("#description").set "Qa ninja"
        find("#amount").set "-2000,00"
        find("#date").set "999"
        click_button "Salvar"
        expect(page).to have_css ".description"
        expect(page).to have_css ".income"
        expect(page).to have_css ".date"
  end
  
  Então('deve ser exibido o valor negativo resultante das duas transação no campo total da pagina principal.') do
    alert = find("#totalDisplay")
    expect(alert.text).to eql "-R$ 1.550,00"
  end
  