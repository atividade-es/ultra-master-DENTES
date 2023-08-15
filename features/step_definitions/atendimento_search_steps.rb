When('I click on the atendimento search link') do
  click_link "Buscar Atendimento"
end

And('I click on the atendimento search search button') do
  click_on "Buscar"
end

And('I select atendimento search dentist with {string}') do |string|
  select string, :from => 'dentist_id'
end

And('I select atendimento search patient with {string}') do |string|
  select string, :from => 'patient_id'
end

And('I enter the atendimento search date and time {string}') do |string|
  datetime = DateTime.parse(string)
  fill_in 'data_hora', with: datetime
end
