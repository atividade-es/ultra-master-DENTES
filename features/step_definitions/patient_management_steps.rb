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
  within('table tbody tr:first-child') do
    click_link 'Excluir'
  end
end

Then('I do not see {string} on page') do |name|
  assert_no_text(name)
end

When('I click on the edit link of the patient') do
  within('table tbody tr:first-child') do
    click_on 'Editar'
  end
end

And('I update the patient\'s name to {string} and cpf to {int}') do |name, cpf|
  fill_in 'patient_name', with: name
  fill_in 'patient_cpf', with: cpf
  fill_in 'patient_email', with: 'patient@email.com'
  fill_in 'patient_contato', with: '81912345678'
  fill_in 'patient_data_nascimento', with: '01/01/2000'
  fill_in 'patient_endereco', with: 'Avenida Brasil'
end

When('I click on the patient update button') do
  click_on "Cadastrar"
end
