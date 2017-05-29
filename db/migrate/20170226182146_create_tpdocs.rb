class CreateTpdocs < ActiveRecord::Migration[5.0]
  def change
    create_table :tpdocs do |t|
      t.string :tipodoc
      t.integer :iddoc

      t.timestamps
    end
  end
end
