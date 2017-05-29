class CreateDtnota < ActiveRecord::Migration[5.0]
  def change
    create_table :dtnota do |t|
      t.integer :idnom
      t.integer :taller
      t.integer :quiz
      t.integer :examen
      t.integer :seguimiento
      t.integer :idencnotas

      t.timestamps
    end
  end
end
