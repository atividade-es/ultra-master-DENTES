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
  
  has_many :atendimentos
end
