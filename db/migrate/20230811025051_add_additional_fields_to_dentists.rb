class AddAdditionalFieldsToDentists < ActiveRecord::Migration[7.0]
  def change
    add_column :dentists, :contato, :string
    add_column :dentists, :horario_chegada, :time
    add_column :dentists, :horario_saida, :time
    add_column :dentists, :email, :string
  end
end
