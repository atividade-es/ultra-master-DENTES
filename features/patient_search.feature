Feature: Busca de consultas
  As a Usuario do sistema
  I want to buscar uma consulta informando o nome do paciente ou o nome do medico
  So that eu visualize a consulta desejada

  Scenario: Open the searching page
    Given I am in 'Welcome' page
    When I click on the patient search link
    Then I see a view with text 'Buscar Paciente'

  Scenario: Search an existent patient by name
    Given I visit the patient creation page
    And I fill 'patient_name' with 'Hackenschmidt Paciente'
    And I fill 'patient_cpf' with '12345678912'
    And I fill 'patient_email' with 'patient@example.com'
    And I click on the patient create button
    When I am in the patient search page
    And I fill 'name' with 'Hackenschmidt Paciente'
    And I click on the patient search button
    Then I see the patient 'Hackenschmidt Paciente' name

  Scenario: Search an existent patient by cpf
    Given I visit the patient creation page
    When I fill 'patient_name' with 'Nome do Paciente'
    And I fill 'patient_cpf' with '98765432112'
    And I fill 'patient_email' with 'patient@example.com'
    And I click on the patient create button
    And I am in the patient search page
    And I fill 'cpf' with 98765432112
    And I click on the patient search button
    Then I see the patient 98765432112 cpf

  Scenario: Search an existent patient by name and cpf
    Given I visit the patient creation page
    When I fill 'patient_name' with 'Nome do Paciente C'
    And I fill 'patient_cpf' with '98765432112'
    And I fill 'patient_email' with 'patient@example.com'
    And I click on the patient create button
    And I am in the patient search page
    And I fill 'cpf' with 98765432112
    And I fill 'name' with 'Nome do Paciente C'
    And I click on the patient search button
    Then I see the patient 'Nome do Paciente C' name
    And I see the patient 98765432112 cpf

  Scenario: Search an nonexistent patient by name
    Given I am in the patient search page
    When I fill 'name' with 'Nome do Paciente'
    And I click on the patient search button
    Then I see the text 'Nenhum paciente encontrado'

  Scenario: Search a nonexistent patient by cpf
    Given I am in the patient search page
    When I fill 'cpf' with 98765432112
    And I click on the patient search button
    Then I see the text 'Nenhum paciente encontrado'