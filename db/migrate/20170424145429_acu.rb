class Acu < ActiveRecord::Migration[5.0]
  def change
      add_column :acudientes, :estudiante_id, :string
  end
end
