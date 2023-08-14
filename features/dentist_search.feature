Feature: Search dentist
  As a system user
  I want to search dentist # by name or cpf
  So that I find the desired dentist

  Scenario: Open the searching page
    Given I am in homepage
    When I click on the dentist search link
    Then I see a view with text 'Buscar Dentista'

  Scenario: Search an existent dentist by name
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in the dentist search page
    And I fill dentist name with 'Dr. Drake Ramoray'
    And I click on the dentist search button
    Then I see the text 'Dr. Drake Ramoray'

  Scenario: Search an existent dentist by cro
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in the dentist search page
    And I fill dentist cro with '12345/RJ'
    And I click on the dentist search button
    Then I see the text 'Dr. Drake Ramoray'

  Scenario: Search an existent dentist by cro and name
    Given I visit the dentist registration page
    When I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in the dentist search page
    And I fill dentist name with 'Dr. Drake Ramoray'
    And I fill dentist cro with '12345/RJ'
    And I click on the dentist search button
    Then I see the text 'Dr. Drake Ramoray'

  Scenario: Search an nonexistent dentist by name
    Given I am in the dentist search page
    And I fill dentist name with 'Dr. Drake Ramoray'
    And I click on the dentist search button
    Then I see the text 'Nenhum dentista encontrado'