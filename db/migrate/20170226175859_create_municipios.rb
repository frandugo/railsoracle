class CreateMunicipios < ActiveRecord::Migration[5.0]
  def change
    create_table :municipios do |t|
      t.string :nommun
      t.integer :iddep

      t.timestamps
    end
  end
end
