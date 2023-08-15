When('I click on the atendimento index page link') do
  click_link 'Atendimentos'
end

And('I click on the atendimento creation page link') do
  click_link 'Novo atendimento'
end

And('I select atendimento dentist with {string}') do |string|
  select string, :from => 'atendimento_dentist_id'
end

And('I select atendimento patient with {string}') do |string|
  select string, :from => 'atendimento_patient_id'
end

And('I enter the atendimento date and time {string}') do |string|
  datetime = DateTime.parse(string)
  fill_in 'atendimento_data_hora', with: datetime
end

And('I fill atendimento observation with {string}') do |string|
  fill_in 'atendimento_observacao', with: string
end

And('I click on the atendimento create button') do
  click_on 'Create Atendimento'
end

# And('I click on atendimento delete button') do
#   click_on 'Desmarcar'
# end

# And('I click on the atendimento edit page link') do
#   click_link 'Editar'
# end

# And('I click on atendimento delete button') do
#   expect(page).to have_content('Atendimentos')
#   expect(page).to have_content('Nome do Paciente')
#   using_wait_time(10) do
#     page.find('table tbody', wait: 10)
#     target_row = page.find('table tbody tr', text: '2024-08-15 15:00:00 UTC', wait: 10)
#     within(target_row) do
#       click_link 'Desmarcar'
#     end
#   end
# end

And('I click on the atendimento edit page link') do
  click_link 'Editar' # Pode ser substituído por: click_link class: 'edit-link'
end

And('I click on atendimento delete button') do
  click_link 'Desmarcar' # Pode ser substituído por: click_link class: 'delete-link'
end


And('I click on the atendimento update button') do
  click_on 'Update Atendimento'
end
