
Dado('que tenho uma transação unitaria de entrada.') do |table|

    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
    find("#BB").click
    expect(page).to have_css ".modal"
    visit "file:///Users/tmoreira/Documents/Dev/maratona-discover-01-main/index.html"
    find("#BB").click
  
    transaction = table.hashes.first

    find("#description").set transaction[:description]
    find("#amount").set transaction[:value]
    find("#date").set transaction[:date]


    click_button "Salvar"

end

Então('deve ser exibido o valor da transação na campo entrada da pagina principal.') do

    alert = find("#incomeDisplay") 
    expect(alert.text).to eql "R$ 1.500,00"

end