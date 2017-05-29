class Notigrupo < ActiveRecord::Migration[5.0]
  def change
    add_column :notificacions, :grupo_id, :string, :limit => 6
    add_column :estudiantes, :grupo_id, :string, :limit => 6
  end
end
