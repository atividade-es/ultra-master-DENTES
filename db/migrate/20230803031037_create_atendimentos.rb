class CreateAtendimentos < ActiveRecord::Migration[7.0]
  def change
    create_table :atendimentos do |t|
      t.references :dentista, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true
      t.datetime :data_hora
      t.text :observacao

      t.timestamps
    end
  end
end
