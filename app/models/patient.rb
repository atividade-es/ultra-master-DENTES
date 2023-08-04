class Patient < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }, format: { without: /\d/, message: "only allows letters" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, numericality: { only_integer: true, message: "should only contain numbers" }

  has_many :Atendimentos
end
