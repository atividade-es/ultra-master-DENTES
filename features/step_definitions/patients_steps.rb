
When('I fill {string} with {string}') do |label, content|
  fill_in label, with: content
end

When('I fill {string} with {int}') do |label, content|
  fill_in label, with: content
end

When('I click on the patient creation page link') do
  click_on "Cadastrar paciente"
end