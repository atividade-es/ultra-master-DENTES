Given('I open the {string} dentist page') do |string|
  visit send("#{string}_dentists_path")
end

When('I fill all fields with valid information') do
  fill_in 'dentist_nome', with: "Dr. Drake Ramoray"
  fill_in 'dentist_especializacao', with: "Clínico Geral"
  check 'dentist_disponivel_segunda'
  uncheck 'dentist_disponivel_terca'
  check 'dentist_disponivel_quarta'
  uncheck 'dentist_disponivel_quinta'
  check 'dentist_disponivel_sexta'
  uncheck 'dentist_disponivel_sabado'
  uncheck 'dentist_disponivel_domingo'
end

When('I click on the {string} button') do |string|
  click_button string
end

Then('I see that this dentist was saved') do
  assert_text('Dr. Drake Ramoray')
end

Given('I open the dentist page') do
  dentist = Dentist.create(
    nome: 'Dr. Jane Smith',
    especializacao: 'Odontopediatria',
    disponivel_segunda: 1,
    disponivel_terca: 0,
    disponivel_quarta: 1,
    disponivel_quinta: 0,
    disponivel_sexta: 1,
    disponivel_sabado: 0,
    disponivel_domingo: 0
  )
  visit dentist_path(dentist)
end

When('I click on the {string} link of the desired dentist') do |string|
  click_on "Excluir Dentista"
end

Then('I see that this dentist was deleted') do
  assert_text('Dentistas')
end

Then('I see the details of {string} displayed') do |string|
  assert_text(string)
  assert_text('Clínico Geral')
  assert_text('Disponibilidade:')
end

Given('there is a dentist with the name {string} and specialization {string}') do |name, specialization|
  Dentist.create(nome: name, especializacao: specialization)
end

When('I click on the name of the desired dentist') do
  click_on "Dr. Drake Ramoray"
end

When('I click on the {string} link of the desired dentist') do |string|
  click_on "Editar"
end

When('I update the dentist\'s name to {string}') do |new_name|
  fill_in 'dentist_nome', with: new_name
end

When('I click on the {string} button') do |string|
  click_button string
end

Then('I see that the dentist information was updated') do
  assert_text('Dr. Jane Johnson')
end
