class Atendimento < ApplicationRecord
  belongs_to :dentist
  belongs_to :patient

  validates :dentist, presence: true
  validates :patient, presence:true
  validates :data_hora, presence: true

  validates :data_hora, uniqueness: { scope: :dentist_id, message: "Dentista com atendimento marcado neste horário" }

  validate :dentist_available
  validate :date_is_not_in_past
  validate :time_in_range
  validate :interval_between_atendimentos, on: :create

  def date_is_not_in_past
    if data_hora.present? && data_hora < Time.now
      errors.add(:data_hora, "Data não pode estar no passado")
    end
  end

  def time_in_range
    if data_hora.present? && (data_hora.hour < 8 || data_hora.hour >= 18)
      errors.add(:data_hora, "deve estar entre 8h e 18h")
    end
  end

  def interval_between_atendimentos
    if data_hora.present? && Atendimento.where("data_hora > ? AND data_hora < ?", data_hora - 1.hour, data_hora + 1.hour).exists?
      errors.add(:data_hora, "deve haver pelo menos 1 hora entre atendimentos")
    end
  end


  def dentist_available
    if dentist.present?
      unless dentist.available_on?(data_hora)
        errors.add(:data_hora, "Dentista não está disponível neste dia")
      end
    end
  end

end
