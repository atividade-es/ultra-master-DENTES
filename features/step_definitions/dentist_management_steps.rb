Given('I visit the dentist registration page') do
  visit 'dentists/new'
  expect(page).to have_content("Cadastro de Dentista")
end

And('I check {string},{string} and {string}') do |check1, check2, check3|
  check check1
  check check2
  check check3
end

And('I click on the dentist create button') do
  click_button "Cadastrar"
end

And('I visit the dentist page') do
  visit 'dentists/1'
end

When('I click on the delete link on the dentist page') do
  click_link 'Excluir Dentista'
end

Then('I see the name of {string} displayed') do |name|
  assert_text(name)
end

When('I visit dentist index page') do
  visit 'dentists/'
end

When('I click to show the dentist') do
  expect(page).to have_content('Dr. Drake Ramoray')
  click_link "Mostrar"
end

When('I click on the edit link of the desired dentist') do
  click_on "Editar"
end

When('I update the dentist\'s name to {string}') do |new_name|
  fill_in 'dentist_nome', with: new_name
end

When('I click on the dentist update button') do
  click_on "Cadastrar"
end

When('I fill dentist name with {string}, especializacao with {string}, cro with {string}') do |name, especializacao, cro|
  fill_in 'dentist_nome', with: name
  select especializacao, :from => 'dentist_especializacao'
  fill_in 'dentist_cro', with: cro
end

And('I fill dentist contact with {string} and dentist email with {string}') do |contact, email|
  fill_in 'dentist_contato', with: contact
  fill_in 'dentist_email', with: email
end

And('I select start time with {string}:{string}') do |time, minutes|
  select time, from: 'dentist_horario_chegada_4i'
  select minutes, from: 'dentist_horario_chegada_5i'
end

And('I select end time with {string}:{string}') do |time, minutes|
  select time, from: 'dentist_horario_saida_4i'
  select minutes, from: 'dentist_horario_saida_5i'
end

And('I fill dentist name with {string}, especializacao with {string}, entrada with {string}:{string} and saida with {string}:{string}') do |name, especializacao, timeEntrada, minutesEntrada, timeSaida, minutesSaida|
  fill_in 'dentist_nome', with: name
  select especializacao, :from => 'dentist_especializacao'
  select timeEntrada, from: 'dentist_horario_chegada_4i'
  select minutesEntrada, from: 'dentist_horario_chegada_5i'
  select timeSaida, from: 'dentist_horario_saida_4i'
  select minutesSaida, from: 'dentist_horario_saida_5i'
end

And('I fill dentist cro with {string}, email with {string} and contact with {string}') do |cro, email, contact|
  fill_in 'dentist_cro', with: cro
  fill_in 'dentist_email', with: email
  fill_in 'dentist_contato', with: contact
end
