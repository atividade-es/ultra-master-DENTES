Feature: Manage dentists
  As a Usuario do sistema
  I want to registrar, editar, remover e exibir um dentista
  So that eu gerencie os dentistas do consultorio

  Scenario: Add a dentist
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill 'dentist_contato' with '1234567890'
    And I fill 'dentist_email' with 'drake@example.com'
    And I click on the dentist create button
    Then I see the text 'Dr. Drake Ramoray'

  Scenario: Remove a dentist
    Given I visit the dentist registration page
    And Dentist exits with name 'Dr. Drake Ramoray', especializacao 'Clínico Geral', entrada '08':'00', saida '18':'00'
    When I visit the dentist page
    And I click on the delete link on the dentist page
    Then I do not see 'Dr. Drake Ramoray' on page

  Scenario: View a dentist's details
    Given I visit the dentist registration page
    And Dentist exits with name 'Dr. Drake Ramoray', especializacao 'Clínico Geral', entrada '08':'00', saida '18':'00'
    When I visit dentist index page
    And I click on the name of the desired dentist
    Then I see the name of "Dr. Drake Ramoray" displayed

  Scenario: Edit a dentist's information
    Given I visit the dentist registration page
    And Dentist exits with name 'Dr. Drake Ramoray', especializacao 'Clínico Geral', entrada '08':'00', saida '18':'00'
    When I visit the dentist page
    And I click on the edit link of the desired dentist
    And I update the dentist's name to "Dr. Jane Johnson"
    And I click on the dentist update button
    Then I see the name of "Dr. Jane Johnson" displayed