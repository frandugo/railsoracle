class CreateAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :asignaturas do |t|
      t.string :nomasi
      t.string :numasi
      t.integer :idtpasi

      t.timestamps
    end
  end
end
