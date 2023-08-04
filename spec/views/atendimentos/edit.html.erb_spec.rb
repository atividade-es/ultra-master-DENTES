require 'rails_helper'

RSpec.describe "atendimentos/edit", type: :view do
  let(:atendimento) {
    Atendimento.create!(
      dentista: nil,
      paciente: nil,
      observacao: "MyText"
    )
  }

  before(:each) do
    assign(:atendimento, atendimento)
  end

  it "renders the edit atendimento form" do
    render

    assert_select "form[action=?][method=?]", atendimento_path(atendimento), "post" do

      assert_select "input[name=?]", "atendimento[dentista_id]"

      assert_select "input[name=?]", "atendimento[paciente_id]"

      assert_select "textarea[name=?]", "atendimento[observacao]"
    end
  end
end
