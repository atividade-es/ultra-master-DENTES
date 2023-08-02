Given('Open the patient {string} page') do |string|
  visit send("#{string}_patient_path")
end

When('I fill all fields with valid information') do
  fill_in 'patient_name', with: "Joao"
  fill_in 'patient_birth', with: Date.new(1927, 7, 27)
  fill_in 'patient_cpf', with: "18529547565"
  fill_in 'patient_email', with: "email@email.com"
  fill_in 'patient_address_attributes_cep', with: "55555555"
  fill_in 'patient_address_attributes_city', with: "casc"
  fill_in 'patient_address_attributes_zone', with: "gsajd"
  fill_in 'patient_address_attributes_street', with: "ghjeiok"
  fill_in 'patient_address_attributes_complement', with: "asogfjki"
end

When('I click on {string}') do |string|
  click_button string
end

Then('I see that this patient was saved') do
  # texto qualquer que esta na pagina de todos os pacientes
  assert_text('Deletar')
end

Given('Open the patient page') do
  patient = Patient.new(name: 'testname1', birth: Date.new(1927, 7, 27), cpf: '32564512354', email: 'asdasd@dsadsa.com')
  patient.build_address(cep: "51234123", city: "cas", zone: "zdas", street: "asdsa", complement: "adsf")
  patient.save
  visit patient_path(patient)
end

When('I click on the {delete} link') do |delete|
  click_on delete
end

Then('I see that this patient was deleted') do
  # texto qualquer que esta na pagina principal
  assert_text('Listar Todos')
end
