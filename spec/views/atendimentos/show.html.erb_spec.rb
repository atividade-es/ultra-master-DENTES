require 'rails_helper'

RSpec.describe "atendimentos/show", type: :view do
  before(:each) do
    assign(:atendimento, Atendimento.create!(
      dentista: nil,
      paciente: nil,
      observacao: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
