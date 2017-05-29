class CreateTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :telefonos do |t|
      t.string :telefono
      t.integer :idnom
      t.integer :iddoce

      t.timestamps
    end
  end
end
