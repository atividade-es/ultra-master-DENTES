
When('I fill {string} with {string}') do |label, content|
  fill_in label, with: content
end

When('I fill {string} with {int}') do |label, content|
  fill_in label, with: content
end

When('I click on the patient creation page link') do
  click_on "Cadastrar paciente"
end

When('I fill patient_name with {string}, cpf with {string}, and patient_email with {string}') do |string, string2, string3|
  fill_in string, with: content1
  fill_in string2, with: content2
  fill_in string3, with: content3
end
