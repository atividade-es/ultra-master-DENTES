Feature: Busca de consultas
  As a Usuario do sistema
  I want to buscar uma consulta informando o nome do paciente ou o nome do medico
  So that eu visualize a consulta desejada

  Scenario: Add a patient
    Given Open the patient 'new' page
    When I fill all fields with valid information
    And I click on 'Create Patient'
    Then I see that this patient was saved

  Scenario: Remove a patient
    Given Open the patient page
    When I click on the 'Deletar' link
    Then I see that this patient was deleted
