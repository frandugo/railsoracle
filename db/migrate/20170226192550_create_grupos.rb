class CreateGrupos < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos do |t|
      t.string :grupo
      t.integer :idcu

      t.timestamps
    end
  end
end
