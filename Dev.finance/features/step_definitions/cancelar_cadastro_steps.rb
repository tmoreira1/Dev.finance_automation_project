
Quando('aciono o botão de cancelar.') do
  find("#canl").click

  end
  
  Então('deve ser redirecionado para tela principal.') do

    page.has_no_button?('Salvar')
    expect(page.has_no_button?('Salvar')).to eq true
  end