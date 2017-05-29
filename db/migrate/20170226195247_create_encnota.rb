class CreateEncnota < ActiveRecord::Migration[5.0]
  def change
    create_table :encnota do |t|
      t.integer :idgru
      t.integer :idcu
      t.integer :idasi
      t.integer :iddoce
      t.integer :idpe

      t.timestamps
    end
  end
end
