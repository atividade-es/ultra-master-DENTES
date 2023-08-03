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
    dentist = Dentist.new(nome: "Dr. Jane Smith", especializacao: "Odontopediatria", disponivel_segunda: true)
    assert dentist.save, "Failed to create dentist for delete test"

    assert_difference("Dentist.count", -1) do
      dentist.destroy
    end
  end
end