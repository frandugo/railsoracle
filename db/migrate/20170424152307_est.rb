class Est < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes, :documento_id
  end
end
