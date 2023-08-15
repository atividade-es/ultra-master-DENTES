Feature: Search Patients
  As a system user
  I want to search patient by name or cpf
  So that I find the desired patient

  Scenario: Open the searching page
    Given I am in homepage
    When I click on the patient search link
    Then I see a view with text 'Buscar Paciente'

  Scenario: Search an existent patient by name
    Given I visit the patient creation page
    When I fill name 'Hackenschmidt Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I am in the patient search page
    And I fill patient name with 'Hackenschmidt Paciente'
    And I click on the patient search button
    Then I see the patient 'Hackenschmidt Paciente' name

  Scenario: Search an existent patient by cpf
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '98765432112', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    And I am in the patient search page
    And I fill patient cpf with '98765432112'
    And I click on the patient search button
    Then I see the patient '98765432112' cpf

  Scenario: Search an existent patient by name and cpf
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente C', cpf '98765432112', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    And I am in the patient search page
    And I fill patient cpf with '98765432112'
    And I fill patient name with 'Nome do Paciente C'
    And I click on the patient search button
    Then I see the patient 'Nome do Paciente C' name
    And I see the patient '98765432112' cpf

  Scenario: Search an nonexistent patient by name
    Given I am in the patient search page
    When I fill patient name with 'Nome do Paciente'
    And I click on the patient search button
    Then I see the text 'Nenhum paciente encontrado'

  Scenario: Search a nonexistent patient by cpf
    Given I am in the patient search page
    When I fill patient cpf with '98765432112'
    And I click on the patient search button
    Then I see the text 'Nenhum paciente encontrado'