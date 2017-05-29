class Docecon < ActiveRecord::Migration[5.0]
  def change
    add_column :docentes, :correo, :string
    add_column :docentes, :telefono, :string
    add_column :docentes, :tarpro, :string
    add_column :docentes, :nompro, :string
  end
end
