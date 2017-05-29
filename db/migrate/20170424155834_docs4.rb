class Docs4 < ActiveRecord::Migration[5.0]
  def change
    add_column :documentos, :acudiente_id, :string
  end
end
