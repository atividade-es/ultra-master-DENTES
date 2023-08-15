class Dentist < ApplicationRecord
  validates :nome, presence: true
  validates :especializacao, presence: true, inclusion: { in: ['Ortodontia', 'Endodontia', 'Implantodontia', 'Clínico Geral', 'Periodontia', 'Odontopediatria', 'Cirurgia Bucomaxilofacial'] }
  validates :disponivel_segunda, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_terca, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_quarta, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_quinta, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_sexta, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_sabado, inclusion: { in: [0, 1] }, presence: true
  validates :disponivel_domingo, inclusion: { in: [0, 1] }, presence: true

  validates :cro, presence: true, format: { with: /\A\d{5}\/[A-Z]{2}\z/, message: "deve estar no formato 12345/RJ - indicando o código da carteira e a abrevição do nome do estado" }
  validates :horario_chegada, presence: true
  validates :horario_saida, presence: true

  validates :contato, presence: true, format: { with: /\A[0-9()\-.]+\z/, message: "deve estar no formato de telefone válido" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :atendimentos
  has_many :patients, through: :atendimentos

  def available_on?(datetime)
    case datetime.strftime('%A').downcase.to_sym
    when :monday
      disponivel_segunda == 1
    when :tuesday
      disponivel_terca == 1
    when :wednesday
      disponivel_quarta == 1
    when :thursday
      disponivel_quinta == 1
    when :friday
      disponivel_sexta == 1
    when :saturday
      disponivel_sabado == 1
    when :sunday
      disponivel_domingo == 1
    else
      false
    end
  end

end
