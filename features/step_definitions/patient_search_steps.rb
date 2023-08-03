Given('I am in {string} page') do |title|
  visit '/'
  expect(page).to have_content(title)
end

When('I click on the {string} link') do |search|
  click_link search
end

Then('I see a view with title {string}') do |title|
  expect(page).to have_content(title)
end

