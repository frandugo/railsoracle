class CreateDireccions < ActiveRecord::Migration[5.0]
  def change
    create_table :direccions do |t|
      t.string :direccion
      t.integer :idmun
      t.integer :idnom

      t.timestamps
    end
  end
end
