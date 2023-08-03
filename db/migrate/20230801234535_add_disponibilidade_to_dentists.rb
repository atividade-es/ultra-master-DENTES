class AddDisponibilidadeToDentists < ActiveRecord::Migration[7.0]
  def change
    add_column :dentists, :disponivel_segunda, :integer, default: 0
    add_column :dentists, :disponivel_terca, :integer, default: 0
    add_column :dentists, :disponivel_quarta, :integer, default: 0
    add_column :dentists, :disponivel_quinta, :integer, default: 0
    add_column :dentists, :disponivel_sexta, :integer, default: 0
    add_column :dentists, :disponivel_sabado, :integer, default: 0
    add_column :dentists, :disponivel_domingo, :integer, default: 0
  end
end
