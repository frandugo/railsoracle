class CreateTpasis < ActiveRecord::Migration[5.0]
  def change
    create_table :tpasis do |t|
      t.string :nomtpasi

      t.timestamps
    end
  end
end
