
Dado("que entrei na página principal") do
    visit 'https://mark7.herokuapp.com'
  end
  
  Quando("eu faço login com {string} e {string}") do |email, senha|
    @email = email
   find('input[name=email]').set email
   find('#login_password').set senha
   click_button 'Login'
  end
  
  Então("devo ser autenticado com sucesso") do
    expect(page).to have_content @email
  end
  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|
    experct(page).to have_content mensagem
  end