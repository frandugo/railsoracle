class Definitivas < ActiveRecord::Migration[5.0]
  def change
    add_column :nota, :nota4, :integer, :limit => 2
    add_column :nota, :estudiante_id, :integer, :limit => 6
    add_column :nota, :encnota_id, :integer, :limit => 6
    remove_column :encnota, :periodo_id
  end
end
