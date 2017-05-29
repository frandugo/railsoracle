class Doceid < ActiveRecord::Migration[5.0]
  def change
    add_column :documentos, :docente_id, :string
  end
end
