# nao devemos nos beneficiar de reaproveitamento de codigo dessa maneira!
When('I fill {string} with {string}') do |label, content|
  fill_in label, with: content
end
When('I fill {string} with {int}') do |label, content|
  fill_in label, with: content
end

When('I fill patient name with {string}, cpf with {string}, email with {string}') do |name, cpf, email|
  fill_in 'patient_name', with: name
  fill_in 'patient_cpf', with: cpf
  fill_in 'patient_email', with: email
end

When('I click on the patient creation page link') do
  click_on "Cadastrar paciente"
end


When('I visit patient index page') do
  visit 'patients/'
end

When('I visit the patient page') do
  visit 'patients/1'
end

When('I click on the delete link on the patient page') do
  click_on 'Deletar'
end

Then('I do not see {string} on page') do |string|
  assert_no_text(string)
end

When('I click on the edit link of the patient') do
  click_on 'Editar'
end

And('I update the patient\'s name to {string}') do |string|
  fill_in 'patient_name', with: string
end

When('I click on the patient update button') do
  click_on "Update Patient"
end

And('I click on the {string} link') do |string|
  click_on string
end