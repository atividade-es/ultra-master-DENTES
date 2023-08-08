Feature: Manage dentists
  As a system user
  I want to add and remove a dentist
  So that I can manage the registered dentists

  Scenario: Add a dentist
    Given I visit the dentist registration page
    When I fill 'dentist_nome' with 'Dr. Drake Ramoray'
    And I select "Clínico Geral" from "dentist_especializacao"
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I click on the dentist create button
    Then I see that this dentist was saved

  Scenario: Remove a dentist
    Given I visit the dentist registration page
    When I fill 'dentist_nome' with 'Dr. Drake Ramoray'
    And I select "Clínico Geral" from "dentist_especializacao"
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I click on the dentist create button
    And I visit the dentist page
    And I click on the delete link on the dentist page
    Then I see that this dentist was deleted

  Scenario: View a dentist's details
    Given I visit the dentist registration page
    When I fill 'dentist_nome' with 'Dr. Drake Ramoray'
    And I select "Clínico Geral" from "dentist_especializacao"
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I click on the dentist create button
    And I visit dentist index page
    And I click on the name of the desired dentist
    Then I see the name of "Dr. Drake Ramoray" displayed

  Scenario: Edit a dentist's information
    Given I visit the dentist registration page
    When I fill 'dentist_nome' with 'Dr. Jane Smith'
    And I select "Odontopediatria" from "dentist_especializacao"
    And I check 'dentist_disponivel_segunda','dentist_disponivel_terca' and 'dentist_disponivel_sexta'
    And I click on the dentist create button
    And I visit the dentist page
    And I click on the edit link of the desired dentist
    And I update the dentist's name to "Dr. Jane Johnson"
    And I click on the update button
    Then I see the name of "Dr. Jane Johnson" displayed