Feature: Busca de consultas
  As a Usuario do sistema
  I want to buscar uma consulta informando o nome do paciente ou o nome do medico
  So that eu visualize a consulta desejada

  Scenario: Open the searching page
    Given I am in 'Welcome' page
    When I click on the 'Buscar paciente' link
    Then I see a view with title 'Buscar Paciente'

  Scenario: Search an existent patient by name
    Given The patient with name 'Nome do Paciente' exists
    And I am in the 'Buscar Paciente' page
    And I fill the 'name' with 'Nome do Paciente'
    When I click on the button 'Buscar'
    Then I see the patient name 'Nome do Paciente'

  Scenario: Search an existent patient by cpf
    Given The patient with cpf 98765432112 exists
    And I am in the 'Buscar Paciente' page
    And I fill the 'cpf' with 98765432112
    When I click on the button 'Buscar'
    Then I see the patient cpf 98765432112

  Scenario: Search an existent patient by name and cpf
    Given The patient with name 'Nome do Paciente C' and cpf 98765432112 exists
    And I am in the 'Buscar Paciente' page
    And I fill the 'cpf' with 98765432112
    And I fill the 'name' with 'Nome do Paciente C'
    When I click on the button 'Buscar'
    Then I see the patient name 'Nome do Paciente C'
    Then I see the patient cpf 98765432112