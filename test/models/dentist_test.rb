require "test_helper"

class DentistTest < ActiveSupport::TestCase
  test "dentist should not be created without a nome" do
    dentist = Dentist.new(especializacao: "Clínico Geral", disponivel_segunda: true)
    assert_not dentist.save, "Created dentist without a nome"
  end

  test "dentist should not be created without a valid especializacao" do
    dentist = Dentist.new(nome: "Dr. Jane Smith", especializacao: "Invalid Specialization", disponivel_segunda: true)
    assert_not dentist.save, "Created dentist with invalid especializacao"
  end

  test "dentist should be able to be deleted" do
    dentist = Dentist.new(
      nome: "Dr. Jane Smith",
      especializacao: "Odontopediatria",
      disponivel_segunda: true,
      cro: "12345/RJ",
      contato: "1234567890",
      email: "drjane@example.com",
      horario_chegada: Time.utc(2024, 1, 1, 8, 0, 0),
      horario_saida: Time.utc(2024, 1, 1, 18, 0, 0)
    )

    assert dentist.valid?, "Dentist is not valid: #{dentist.errors.full_messages.join(', ')}"
    assert dentist.save
    assert dentist.destroy
  end
end
