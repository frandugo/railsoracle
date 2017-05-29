class Docedoci < ActiveRecord::Migration[5.0]
  def change
    remove_column :docentes, :documento_id
  end
end
