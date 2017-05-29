class CambioDocumento < ActiveRecord::Migration[5.0]
  def change
    #remove_foreign_key :tpdocs, name: :doc_tpdocs_fk
    #drop_table :tpdocs
    #add_column :documentos, :tipodoc, :string
  end
end
