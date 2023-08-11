require "test_helper"

class AtendimentoTest < ActiveSupport::TestCase

  def setup
    patient = Patient.new(
      name: 'Nome do Paciente',
      email: 'paciente@email.com',
      cpf: 12345678961
    )
    dentist = Dentist.new(
      nome: 'Nome do Dentista',
      especializacao: 'Ortodontia',
      cro: '98765/RJ',
      disponivel_segunda: 1,
      disponivel_terca: 1,
      disponivel_quarta: 1,
      disponivel_quinta: 1,
      disponivel_sexta: 1,
      disponivel_sabado: 0,
      disponivel_domingo: 0,
      horario_chegada: Time.utc(2023, 8, 9, 8, 0, 0),
      horario_saida: Time.utc(2023, 8, 9, 18, 0, 0)
    )
    patient.save
    dentist.save
  end

  test "atendimento should not be created without a dentist" do
    atendimento = Atendimento.new(
      patient: Patient.find_by_cpf(12345678961),
      data_hora: DateTime.new
    )
    assert_not atendimento.save, "Atendimento was created without a dentist"
  end

  test "atendimento should not be created without a patient" do
    atendimento = Atendimento.new(
      data_hora: DateTime.new,
      dentist: Dentist.find_by_nome('Nome do Dentista')
    )
    assert_not atendimento.save, "Atendimento was created without a patient"
  end

  test "atendimento should be created with success" do
    atendimento = Atendimento.new(
      patient: Patient.find_by_cpf(12345678961),
      data_hora: Time.utc(2023, 8, 9, 10, 0, 0),
      dentist: Dentist.find_by_nome('Nome do Dentista')
    )
    assert atendimento.save, "Failed to create atendimento"
  end
end
