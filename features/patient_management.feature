Feature: Manage patient
  As a system user
  I want to add, edit and remove a patient
  So that I can manage the registered patients

  Background:
    Given I create an admin with email "user@example.com" and password "password"

  Scenario: Open the create page
    Given I am in homepage
    When I click on the patient creation page link
    Then I see the text 'Cadastro do Paciente'

  Scenario: Add a patient is successful
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
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
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'email', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    Then I see the text 'Email is invalid'

  Scenario: Add a patient with cpf already existent failed
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    Then I see the text 'Cpf has already been taken'

  Scenario: Remove a patient
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    And I visit patient index page
    And I click on the delete link on the patient page
    Then I see the text 'Paciente excluido com sucesso.'

  Scenario: Edit a patient name
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    And I visit patient index page
    And I click on the edit link of the patient
    And I update the patient's name to "Sr. Armstrong" and cpf to 96385274100
    And I click on the patient update button
    Then I see the text 'Sr. Armstrong'
