class CreateJornadas < ActiveRecord::Migration[5.0]
  def change
    create_table :jornadas do |t|
      t.string :jornada
      t.integer :idgru

      t.timestamps
    end
  end
end
