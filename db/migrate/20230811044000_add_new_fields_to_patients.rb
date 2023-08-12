class AddNewFieldsToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :contato, :string
    add_column :patients, :data_nascimento, :date
    add_column :patients, :genero, :string
    add_column :patients, :endereco, :string
  end
end
