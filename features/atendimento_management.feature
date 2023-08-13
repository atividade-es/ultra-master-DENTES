Feature: Manage atendimento
  As a system user
  I want to add, edit and remove atendimentos
  So that I can manage the system atendimentos

  Scenario: Open the create page
    Given I am in homepage
    When I click on the atendimento index page link
    And I click on the atendimento creation page link
    Then I see the text 'Novo Atendimento'

  Scenario: Add an Atendimento is successful
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
    And I enter the atendimento date '2024/08/15'
    And I select atendimento time with '15:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    Then I see the text 'Atendimento foi criado com sucesso.'

  Scenario: Add an atendimento with missing fields failed
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento creation page link
    And I click on the atendimento create button
    Then I see the text 'erros ocorreram'

  Scenario: Remove an atendimento
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
    And I enter the atendimento date '2024/08/15'
    And I select atendimento time with '15:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on atendimento delete button
    Then I see the text 'Atendimento excluido com sucesso.'

  Scenario: Edit an atendimento observation
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
    And I enter the atendimento date '2024/08/15'
    And I select atendimento time with '15:00'
    And I fill atendimento observation with 'Observacao do atendimento'
    And I click on the atendimento create button
    When I am in homepage
    And I click on the atendimento index page link
    And I click on the atendimento edit page link
    And I fill atendimento observation with 'Nova Observacao do atendimento'
    And I click on the atendimento update button
