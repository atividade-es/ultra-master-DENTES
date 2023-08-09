class Atendimento < ApplicationRecord
  belongs_to :dentist
  belongs_to :patient

  validates :dentist, presence: true
  validates :patient, presence:true
  validates :data_hora, presence: true
end
