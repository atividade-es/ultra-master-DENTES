require "test_helper"

class PatientTest < ActiveSupport::TestCase
  test "patient should not be created with empty variables" do
    patient = Patient.new
    assert_not patient.save, "Created patient with null variables"
  end

  test "patient should be created with not null and correct variables" do
    patient = Patient.new(
      name: "Larry Silverstein",
      cpf: "12345678912",
      email: "luckylarry@example.com",
      contato: '81912345678',
      data_nascimento: Date.current,
      genero: 'Feminino',
      endereco: 'Rua Abcd'
    )
    assert patient.save
  end

  test "patient should not be created with wrong cpf" do
    patient = Patient.new(name: "pedepano", cpf: "10598T12523", email: "pedepano@example.com")
    assert_not patient.save
  end
end
