require "test_helper"

class AtendimentoTest < ActiveSupport::TestCase

  def before_tests
    patient = Patient.new(
      name: 'Nome do Paciente',
      email: 'paciente@email.com',
      cpf: 12345678961
    )
    dentist = Dentist.new(
      nome: 'Nome do Dentista',
      especializacao: 'Ortodontia',
      disponivel_segunda: 1,
      disponivel_terca: 1,
      disponivel_quarta: 1,
      disponivel_quinta: 1,
      disponivel_sexta: 1,
      disponivel_sabado: 0,
      disponivel_domingo: 0
    )
    patient.save
    dentist.save
  end


  test "atendimento should not be created without a dentist" do
    before_tests
    atendimento = Atendimento.new(
      patient: Patient.find_by_cpf('12345678961'),
      data_hora: DateTime.new
    )
    assert_not atendimento.save
  end

  test "atendimento should not be created without a patient" do
    before_tests
    atendimento = Atendimento.new(
      data_hora: DateTime.new,
      dentist: Dentist.find_by_nome('Nome do Dentista')
    )
    assert_not atendimento.save
  end

  test "atendimento be created with success" do
    before_tests
    atendimento = Atendimento.new(
      patient: Patient.find_by_cpf('12345678961'),
      data_hora: Time.utc(2023, 8, 9, 10, 0, 0),
      dentist: Dentist.find_by_nome('Nome do Dentista')
    )
    assert atendimento.save
  end

end
