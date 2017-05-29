class Fk1 < ActiveRecord::Migration[5.0]
  def change
    rename_column :municipios, :iddep_id, :departamento_id
    add_foreign_key :municipios, :departamentos, name: :dep_mun_fk
  end
end
