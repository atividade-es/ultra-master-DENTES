Given('I am in {string} page to create') do |title|
  visit '/patients/new'
  expect(page).to have_content(title)
end

When('I fill {string} with {string}') do |label, content|
  fill_in label, with: content
end

When('I fill {string} with {int}') do |label, content|
  fill_in label, with: content
end

Then('I see message {string}') do |title|
  expect(page).to have_content(title)
end