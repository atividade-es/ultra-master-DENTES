class Dentist < ApplicationRecord
  validates :nome, presence: true
  validates :especializacao, presence: true, inclusion:
    {
      in: ['Ortodontia', 'Endodontia', 'Implantodontia', 'Clínico Geral', 'Periodontia', 'Odontopediatria', 'Cirurgia Bucomaxilofacial']
    }
  validates :disponivel_segunda, presence: true, inclusion: [0,1]
  validates :disponivel_terca, presence: true, inclusion: [0,1]
  validates :disponivel_quarta, presence: true, inclusion: [0,1]
  validates :disponivel_quinta, presence: true, inclusion: [0,1]
  validates :disponivel_sexta, presence: true, inclusion: [0,1]
  validates :disponivel_sabado, presence: true, inclusion: [0,1]
  validates :disponivel_domingo, presence: true, inclusion: [0,1]


end
