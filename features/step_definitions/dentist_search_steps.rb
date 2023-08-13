And('I am in the dentist search page') do
  visit '/dentist/search'
  expect(page).to have_content('Buscar Dentista')
end

When('I click on the dentist search link') do
  click_link "Buscar dentista"
end

And('I fill dentist name with {string}') do |string|
  fill_in 'dentist_name', with: string
end

When('I click on the dentist search button') do
  click_on "Buscar"
end
