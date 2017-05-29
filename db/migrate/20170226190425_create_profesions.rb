class CreateProfesions < ActiveRecord::Migration[5.0]
  def change
    create_table :profesions do |t|
      t.string :tarpro
      t.string :nompro
      t.integer :iddoce

      t.timestamps
    end
  end
end
