class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :nom1
      t.string :nom2
      t.string :ape1
      t.string :ape2
      t.integer :iddoc
      t.integer :idac
      t.integer :idcu

      t.timestamps
    end
  end
end
