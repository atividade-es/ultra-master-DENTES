Given('I visit the dentist registration page') do
  visit 'dentists/new'
  expect(page).to have_content("Cadastrar Dentista")
end

When('I fill {field} with {string}') do |field, string|
  fill_in field, with: string
end

And('I select {string} from {string}') do |select, field|
  select select, :from => field
end

And('I check {string},{string} and {string}') do |check1, check2, check3|
  check check1
  check check2
  check check3
end

And('I click on the dentist create button') do
  click_button "Create Dentist"
end

Then('I see that this dentist was saved') do
  assert_text('Dr. Drake Ramoray')
end

And('I visit the dentist page') do
  visit 'dentists/1'
end

When('I click on the delete link on the dentist page') do
  click_on 'Excluir Dentista'
end

Then('I see that this dentist was deleted') do
  assert_no_text('Dr. Drake Ramoray')
end

Then('I see the name of {string} displayed') do |string|
  assert_text(string)
end

Given('there is a dentist with the name {string} and specialization {string}') do |name, specialization|
  Dentist.create(nome: name, especializacao: specialization)
end

When('I visit dentist index page') do
  visit 'dentists/'
end

When('I click on the name of the desired dentist') do
  expect(page).to have_content('Dr. Drake Ramoray')
  click_on "Dr. Drake Ramoray"
end

When('I click on the edit link of the desired dentist') do
  click_on "Editar"
end

When('I update the dentist\'s name to {string}') do |new_name|
  fill_in 'dentist_nome', with: new_name
end

When('I click on the update button') do
  click_on "Update Dentist"
end

Then('I see that the dentist information was updated') do
  assert_text('Dr. Jane Johnson')
end

