class CreateNotificacions < ActiveRecord::Migration[5.0]
  def change
    create_table :notificacions do |t|
      t.text :notificacion
      t.integer :iddoce
      t.integer :idnom

      t.timestamps
    end
  end
end
