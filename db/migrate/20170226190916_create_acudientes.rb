class CreateAcudientes < ActiveRecord::Migration[5.0]
  def change
    create_table :acudientes do |t|
      t.string :nom1
      t.string :nom2
      t.string :ape1
      t.string :ape2
      t.integer :iddoc

      t.timestamps
    end
  end
end
