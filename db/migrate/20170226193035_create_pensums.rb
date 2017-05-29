class CreatePensums < ActiveRecord::Migration[5.0]
  def change
    create_table :pensums do |t|
      t.integer :idasi
      t.integer :idcu
      t.date :fechai
      t.date :fechaf

      t.timestamps
    end
  end
end
