class Patient < ApplicationRecord
  GENDER_OPTIONS = ['Masculino', 'Feminino']

  validates :name, presence: true, length: { minimum: 2 }, format: { without: /\d/, message: "only allows letters" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, numericality: { only_integer: true, message: "should only contain numbers" }

  validates :contato, presence: true, format: { with: /\A\d{10,11}\z/, message: "should have 10 or 11 digits" }
  validate :data_nascimento_valida
  validates :genero, presence: true, inclusion: { in: GENDER_OPTIONS, message: "should be 'Masculino' or 'Feminino'" }
  validates :endereco, presence: true

  private

  def data_nascimento_valida
    if data_nascimento.present? && data_nascimento > Date.current
      errors.add(:data_nascimento, "não aceitamos viajantes do tempo")
    end
  end
end
