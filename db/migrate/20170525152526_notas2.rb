class Notas2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :nota, :encnota_id
    add_column :nota, :grupo_id, :integer, :limit => 6
    add_column :nota, :curso_id, :integer, :limit => 6
    add_column :nota, :asignatura_id, :integer, :limit => 6
    add_column :nota, :docente_id, :integer, :limit => 6
  end
end
