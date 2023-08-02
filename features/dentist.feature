Feature: Manage dentists
  As a system user
  I want to add and remove a dentist
  So that I can manage the registered dentists

  Scenario: Add a dentist
    Given I open the 'Cadastar dentista' dentist page
    When I fill all fields with valid information
    And I click on the 'Create Dentist' button
    Then I see that this dentist was saved

  Scenario: Remove a dentist
    Given I open the dentist page
    When I click on the 'Excluir Dentista' link of the desired dentist
    Then I see that this dentist was deleted

  Scenario: View a dentist's details
    Given there is a dentist with the name "Dr. Drake Ramoray" and specialization "Clínico Geral"
    And I open the dentist page
    When I click on the name of the desired dentist
    Then I see the details of "Dr. Drake Ramoray" displayed

  Scenario: Edit a dentist's information
    Given there is a dentist with the name "Dr. Jane Smith" and specialization "Odontopediatria"
    And I open the dentist page
    When I click on the 'Editar' link of the desired dentist
    And I update the dentist's name to "Dr. Jane Johnson"
    And I click on the 'Update Dentist' button
    Then I see that the dentist information was updated