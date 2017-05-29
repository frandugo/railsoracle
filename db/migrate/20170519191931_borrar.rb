class Borrar < ActiveRecord::Migration[5.0]
  def change
    drop_table :jornadas
    remove_column :asignaturas, :tpasi_id
    drop_table :tpasis

  end
end
