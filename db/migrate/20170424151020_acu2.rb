class Acu2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :acudientes, :documento_id
  end
end
