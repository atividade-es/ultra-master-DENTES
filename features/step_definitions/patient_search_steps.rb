Given('I am in {string} page') do |title|
  visit '/'
  expect(page).to have_content(title)
end

When('I click on the patient search link') do
  click_link "Buscar paciente"
end

Then('I see a view with text {string}') do |title|
  expect(page).to have_content(title)
end

#------------------------------------------------------------------------

Given('I open the patient creation page') do
  visit 'patients/new'
  expect(page).to have_content('Cadastro')
end

And('I click on the patient create button') do
  click_on 'Create Patient'
  expect(page).to have_content('Dados do Paciente')
end

And('I am in the patient search page') do
  visit '/search'
  expect(page).to have_content('Buscar Paciente')
end

When('I click on the patient search button') do
  click_on "Buscar"
end

Then('I see the patient {string} name') do |name|
  expect(page).to have_content(name)
end

#------------------------------------------------------------------------

Then('I see the patient {int} cpf') do |cpf|
  expect(page).to have_content(cpf)
end

#------------------------------------------------------------------------

Given('The patient with name {string} and cpf {int} exists') do |name, cpf|
  visit 'patients/new'
  expect(page).to have_content('Cadastro')
  fill_in 'patient_name', with: name
  fill_in 'patient_cpf', with: cpf
  fill_in 'patient_email', with: "patientb@email.com"

  click_on 'Create Patient'
  expect(page).to have_content('Dados do Paciente')
end

Then('I see the text {string}') do |message|
  expect(page).to have_content(message)
end