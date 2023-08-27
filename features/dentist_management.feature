Feature: Manage dentists
  As a Usuario do sistema
  I want to registrar, editar, remover e exibir um dentista
  So that eu gerencie os dentistas do consultorio

  Background:
    Given I create an admin with email "user@example.com" and password "password"

  Scenario: Add a dentist
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    Then I see the text 'Dr. Drake Ramoray'

  Scenario: Add a dentist with all fields empty
    Given I visit the dentist registration page
    And I click on the dentist create button
    Then I see the text 'error'

  Scenario: Remove a dentist
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', entrada with '08':'00' and saida with '18':'00'
    And I fill dentist cro with '12345/SC', email with 'email@example.com' and contact with '49927272727'
    And I click on the dentist create button
    When I visit the dentist page
    And I check 'Dr. Drake Ramoray'
    And I check 'Excluir Dentista'
    And I click on the delete link on the dentist page
    Then I do not see 'Dr. Drake Ramoray' on page

  Scenario: View a dentist's details
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', entrada with '08':'00' and saida with '18':'00'
    And I fill dentist cro with '12345/SC', email with 'email@example.com' and contact with '49927272727'
    And I click on the dentist create button
    When I visit dentist index page
    And I click to show the dentist
    Then I see the name of "Dr. Drake Ramoray" displayed

  Scenario: Edit a dentist's information
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', entrada with '08':'00' and saida with '18':'00'
    And I fill dentist cro with '12345/SC', email with 'email@example.com' and contact with '49927272727'
    And I click on the dentist create button
    When I visit the dentist page
    And I click on the edit link of the desired dentist
    And I update the dentist's name to "Dr. Jane Johnson"
    And I click on the dentist update button
    Then I see the name of "Dr. Jane Johnson" displayed