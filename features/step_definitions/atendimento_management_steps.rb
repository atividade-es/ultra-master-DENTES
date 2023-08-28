When('I click on the atendimento button') do
  click_on 'Atendimentos'
end

And('I click on the atendimento creation page link') do
  click_link 'Novo Atendimento'
end

And('I select atendimento dentist with {string}') do |dentist|
  select dentist, :from => 'atendimento_dentist_id'
end

And('I select atendimento patient with {string}') do |patient|
  select patient, :from => 'atendimento_patient_id'
end

And('I enter the atendimento date and time {string}') do |time|
  datetime = DateTime.parse(time)
  fill_in 'atendimento_data_hora', with: datetime
end

And('I fill atendimento observation with {string}') do |observation|
  fill_in 'atendimento_observacao', with: observation
end

And('I click on the atendimento create button') do
  click_on 'Cadastrar'
end

And('I click on the atendimento edit page link') do
  click_link 'Editar'
end

And('I click on atendimento delete button') do
  click_link 'Excluir'
end

And('I click on the atendimento update button') do
  click_on 'Cadastrar'
end

And('I check {string}') do |message|
  expect(page).to have_content(message)
end