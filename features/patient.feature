Feature: Manage patient
  As a system user
  I want to add and remove a patient
  So that I can manage the registered patients

  Scenario: Open the create page
    Given I am in Welcome page
    When I click on the patient creation page link
    Then I see the text Cadastro do Paciente

  Scenario: Add a patient is successful
    Given I visit the patient creation page
    When I fill 'patient_name' with 'Nome do Paciente'
    And I fill 'patient_cpf' with 12369874510
    And I fill 'patient_email' with 'patient@email.com'
    And I click on the patient create button
    Then I see the text 'Dados do Paciente'

  Scenario: Add a patient with missing fields failed
    Given I visit the patient creation page
    When I click on the patient create button
    Then I see the text 'Name can\'t be blank'
    And I see the text 'Email can\'t be blank'
    And I see the text 'Cpf can\'t be blank'

  Scenario: Add a patient with invalid email failed
    Given I visit the patient creation page
    When I fill 'patient_name' with 'Nome do Paciente'
    And I fill 'patient_cpf' with 12369874510
    And I fill 'patient_email' with 'email'
    And I click on the patient create button
    Then I see the text 'Email is invalid'

  Scenario: Add a patient with cpf already existent failed
    Given I visit the patient creation page
    When I fill 'patient_name' with 'Nome do Paciente'
    And I fill 'patient_cpf' with 98765432112
    And I fill 'patient_email' with 'patient@email.com'
    And I click on the patient create button
    When I visit the patient creation page
    And I fill 'patient_name' with 'Nome do Paciente'
    And I fill 'patient_cpf' with 98765432112
    And I fill 'patient_email' with 'patient@email.com'
    And I click on the patient create button
    Then I see the text 'Cpf has already been taken'