require 'rails_helper'

RSpec.describe "atendimentos/new", type: :view do
  before(:each) do
    assign(:atendimento, Atendimento.new(
      dentista: nil,
      paciente: nil,
      observacao: "MyText"
    ))
  end

  it "renders new atendimento form" do
    render

    assert_select "form[action=?][method=?]", atendimentos_path, "post" do

      assert_select "input[name=?]", "atendimento[dentista_id]"

      assert_select "input[name=?]", "atendimento[paciente_id]"

      assert_select "textarea[name=?]", "atendimento[observacao]"
    end
  end
end
