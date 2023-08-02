class CreateDentists < ActiveRecord::Migration[7.0]
  def change
    create_table :dentists do |t|
      t.string :nome
      t.string :especializacao
      #t.string :horario_atendimento, default: "", null: false

      t.timestamps
    end
  end
end
