And('I am in the dentist search page') do
  visit '/dentists/search'
  expect(page).to have_content('Buscar Dentista')
end

When('I click on the dentist search link') do
  click_link "Buscar dentista"
end

And('I fill dentist name with {string}') do |name|
  fill_in 'dentist_nome', with: name
end

When('I click on the dentist search button') do
  click_on "Buscar"
end

And('I fill dentist cro with {string}') do |cro|
  fill_in 'dentist_cro', with: cro
end