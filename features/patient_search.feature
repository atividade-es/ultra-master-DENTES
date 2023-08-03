Feature: Busca de consultas
  As a Usuario do sistema
  I want to buscar uma consulta informando o nome do paciente ou o nome do medico
  So that eu visualize a consulta desejada

  Scenario: Open the searching page
    Given I am in 'Welcome' page
    When I click on the 'Buscar paciente' link
    Then I see a view with title 'Buscar Paciente'
