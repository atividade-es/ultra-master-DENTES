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
  
  has_many :atendimentos
end
