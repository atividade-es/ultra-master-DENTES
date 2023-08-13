When('I click on the atendimento index page link') do
  click_on 'Atendimentos'
end

And('I click on the atendimento creation page link') do
  click_on 'Novo atendimento'
end

And('I select atendimento dentist with {string}') do |string|
  select string, :from => 'atendimento_dentist_id'
end

And('I select atendimento patient with {string}') do |string|
  select string, :from => 'atendimento_patient_id'
end

And('I enter the atendimento date {string}') do |string|
  date = Date.parse(string)
  fill_in 'atendimento_data', with: date
end

And('I select atendimento time with {string}') do |string|
  fill_in 'atendimento_hora', with: string
end

And('I fill atendimento observation with {string}') do |string|
  fill_in 'atendimento_observacao', with: string
end

And('I click on the atendimento create button') do
  click_on 'Create Atendimento'
end

And('I click on atendimento delete button') do
  click_on 'Desmarcar'
end

And('I click on the atendimento edit page link') do
  click_on 'Editar'
end

And('I click on the atendimento update button') do
  click_on 'Update Atendimento'
end