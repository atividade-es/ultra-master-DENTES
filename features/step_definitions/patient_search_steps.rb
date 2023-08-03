Given('I am in {string} page') do |title|
  visit '/'
  expect(page).to have_content(title)
end

When('I click on the {string} link') do |search|
  click_link search
end

Then('I see a view with title {string}') do |title|
  expect(page).to have_content(title)
end

#------------------------------------------------------------------------

Given('The patient with name {string} exists') do |name|
  visit 'patients/new'
  expect(page).to have_content('Cadastro')
  fill_in 'patient_name', with: name
  fill_in 'patient_cpf', with: "12345678997"
  fill_in 'patient_email', with: "patient@email.com"

  click_on 'Create Patient'
  expect(page).to have_content('Dados do Paciente')
end

Given('I am in the {string} page') do |title|
  visit '/search'
  expect(page).to have_content(title)
end

Given('I fill the {string} with {string}') do |label, name|
  fill_in label, with: name
end

When('I click on the button {string}') do |search|
  click_on search
end

Then('I see the patient name {string}') do |name|
  expect(page).to have_content(name)
end

