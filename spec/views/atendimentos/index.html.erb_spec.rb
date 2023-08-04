require 'rails_helper'

RSpec.describe "atendimentos/index", type: :view do
  before(:each) do
    assign(:atendimentos, [
      Atendimento.create!(
        dentista: nil,
        paciente: nil,
        observacao: "MyText"
      ),
      Atendimento.create!(
        dentista: nil,
        paciente: nil,
        observacao: "MyText"
      )
    ])
  end

  it "renders a list of atendimentos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
