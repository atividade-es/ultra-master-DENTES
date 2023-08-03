Feature: Manage patient
  As a system user
  I want to add and remove a patient
  So that I can manage the registered patients

  Scenario: Open the create page
    Given I am in 'Welcome' page
    When I click on the 'Cadastrar paciente' link
    Then I see a view with title 'Cadastro do Paciente'

  Scenario: Add a patient is successful
    Given I am in 'Cadastro do Paciente' page to create
    When I fill 'patient_name' with 'Nome do Paciente'
    When I fill 'patient_cpf' with 12369874510
    When I fill 'patient_email' with 'patient@email.com'
    And I click on the 'Create Patient' button
    Then I see message 'Dados do Paciente'

  Scenario: Add a patient with missing fields failed
    Given I am in 'Cadastro do Paciente' page to create
    And I click on the 'Create Patient' button
    Then I see message 'Name can\'t be blank'
    Then I see message 'Email can\'t be blank'
    Then I see message 'Cpf can\'t be blank'

  Scenario: Add a patient with invalid email failed
    Given I am in 'Cadastro do Paciente' page to create
    When I fill 'patient_name' with 'Nome do Paciente'
    When I fill 'patient_cpf' with 12369874510
    When I fill 'patient_email' with 'email'
    And I click on the 'Create Patient' button
    Then I see message 'Email is invalid'

  Scenario: Add a patient with cpf already existent failed
    Given The patient with cpf 98765432112 exists
    And I am in 'Cadastro do Paciente' page to create
    When I fill 'patient_name' with 'Nome do Paciente'
    When I fill 'patient_cpf' with 98765432112
    When I fill 'patient_email' with 'email'
    And I click on the 'Create Patient' button
    Then I see message 'Cpf has already been taken'