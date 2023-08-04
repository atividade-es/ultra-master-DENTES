class Atendimento < ApplicationRecord
  belongs_to :dentista
  belongs_to :paciente
end
