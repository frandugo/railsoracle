class Adest < ActiveRecord::Migration[5.0]
  def change
    add_column :documentos, :estudiante_id, :string
  end
end
