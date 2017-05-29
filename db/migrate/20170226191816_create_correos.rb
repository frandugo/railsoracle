class CreateCorreos < ActiveRecord::Migration[5.0]
  def change
    create_table :correos do |t|
      t.string :correo
      t.integer :idnom
      t.integer :iddoce

      t.timestamps
    end
  end
end
