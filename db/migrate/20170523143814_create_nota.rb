class CreateNota < ActiveRecord::Migration[5.0]
  def change
    create_table :nota do |t|
      t.integer :nota1
      t.integer :nota2
      t.integer :nota3

      t.timestamps
    end
  end
end
