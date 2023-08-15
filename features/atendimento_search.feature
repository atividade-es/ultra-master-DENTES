Feature: Busca de atendimentos
  As a Usuario do sistema
  I want to buscar um atendimento informando o nome do paciente ou o nome do medico
  So that eu visualize o atendimento desejada

  Scenario: Open the atendimento searching page
    Given I am in homepage
    When I click on the atendimento search link
    Then I see a view with text 'Buscar Atendimento'

  Scenario: Search an existent atendimento by dentist
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I visit the dentist registration page
    And I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento creation page link
    And I select atendimento dentist with 'Dr. Drake Ramoray'
    And I select atendimento patient with 'Nome do Paciente'
    And I enter the atendimento date and time '2024-08-12 15:00:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento search link
    And I select atendimento search dentist with 'Dr. Drake Ramoray'
    And I click on the atendimento search search button
    Then I see a view with text 'Nome do Paciente'

  Scenario: Search an existent atendimento by patient
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I visit the dentist registration page
    And I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento creation page link
    And I select atendimento dentist with 'Dr. Drake Ramoray'
    And I select atendimento patient with 'Nome do Paciente'
    And I enter the atendimento date and time '2024-08-12 15:00:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento search link
    And I select atendimento search patient with 'Nome do Paciente'
    And I click on the atendimento search search button
    Then I see a view with text 'Dr. Drake Ramoray'

  Scenario: Search an existent atendimento by patient and dentist
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I visit the dentist registration page
    And I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento creation page link
    And I select atendimento dentist with 'Dr. Drake Ramoray'
    And I select atendimento patient with 'Nome do Paciente'
    And I enter the atendimento date and time '2024-08-12 15:00:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento search link
    And I select atendimento search patient with 'Nome do Paciente'
    And I select atendimento search dentist with 'Dr. Drake Ramoray'
    And I click on the atendimento search search button
    Then I see a view with text 'Dr. Drake Ramoray'

  Scenario: Search a nonexistent atendimento
    When I am in homepage
    And I click on the atendimento search link
    And I click on the atendimento search search button
    Then I see a view with text 'Nenhuma consulta encontrada.'

  Scenario: Search an existent atendimento by date and hour
    Given I visit the patient creation page
    When I fill name 'Nome do Paciente', cpf '12369874510', email 'patient@email.com', phone '81912345678', birth '01/01/2000', gender 'Feminino', address 'Avenida Brasil'
    And I click on the patient create button
    When I visit the dentist registration page
    And I fill dentist name with 'Dr. Drake Ramoray', especializacao with 'Clínico Geral', cro with '12345/RJ'
    And I check 'dentist_disponivel_segunda','dentist_disponivel_quarta' and 'dentist_disponivel_sexta'
    And I select start time with '08':'00'
    And I select end time with '18':'00'
    And I fill dentist contact with '1234567890' and dentist email with 'drake@example.com'
    And I click on the dentist create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento creation page link
    And I select atendimento dentist with 'Dr. Drake Ramoray'
    And I select atendimento patient with 'Nome do Paciente'
    And I enter the atendimento date and time '2024-08-12 15:00:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento search link
    And I enter the atendimento search date and time '2024-08-12 15:00:00'
    And I click on the atendimento search search button
    Then I see a view with text 'Dr. Drake Ramoray'
