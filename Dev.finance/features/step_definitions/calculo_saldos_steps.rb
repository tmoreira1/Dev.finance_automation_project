
Dado('que tenho Tres transação.') do |table|
    
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
        expect(page).to have_css ".modal"
        visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
        find("#BB").click
      
        transaction = table.hashes.first
        transaction1 = table.hashes[1]
        transaction2 = table.hashes[2]

        find("#description").set transaction[:description]
        find("#amount").set transaction[:value]
        find("#date").set transaction[:date]

        click_button "Salvar"

        find("#BB").click

        find("#description").set transaction1[:description]
        find("#amount").set transaction1[:value]
        find("#date").set transaction1[:date]


        click_button "Salvar"
    
        find("#BB").click

        find("#description").set transaction2[:description]
        find("#amount").set transaction2[:value]
        find("#date").set transaction2[:date]


        click_button "Salvar"

  end
  
  Quando('verifico o campo de entrada, saida e total.') do
    expect(page).to have_css "#totalDisplay"
    expect(page).to have_css "#incomeDisplay"

  end
  
  Então('deve ser exibido o valor de acordo com cada campo.') do 

    alert = find("#totalDisplay") 
    expect(alert.text).to eql "R$ 658,00"

    alert = find("#incomeDisplay") 
    expect(alert.text).to eql "R$ 757,00"

    alert = find("#expenseDisplay") 
    expect(alert.text).to eql "-R$ 99,00"
  end


