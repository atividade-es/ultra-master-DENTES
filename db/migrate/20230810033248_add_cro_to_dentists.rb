class AddCroToDentists < ActiveRecord::Migration[7.0]
  def change
    add_column :dentists, :cro, :string
  end
end
