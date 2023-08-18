When('I fill name {string}, cpf {string}, email {string}, phone {string}, birth {string}, gender {string}, address {string}') do |name, cpf, email, phone, birth, gender, address|
  fill_in 'patient_name', with: name
  fill_in 'patient_cpf', with: cpf
  fill_in 'patient_email', with: email
  fill_in 'patient_contato', with: phone
  fill_in 'patient_data_nascimento', with: birth
  select gender, from: 'patient_genero'
  fill_in 'patient_endereco', with: address
end

When('I click on the patient creation page link') do
  click_on "Cadastrar paciente"
end

When('I visit patient index page') do
  visit 'patients/'
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