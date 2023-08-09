class Atendimento < ApplicationRecord
  belongs_to :dentist
  belongs_to :patient

  validates :dentist, presence: true
  validates :patient, presence:true
  validates :data_hora, presence: true

  validates :data_hora, uniqueness: { scope: :dentist_id, message: "Dentista com consulta marcada neste horário" }

  validate :dentist_available_on_requested_date

  def dentist_available_on_requested_date
    unless dentist.available_on?(data_hora)
      errors.add(:data_hora, "Dentista não está disponível neste dia")
    end
  end

end
