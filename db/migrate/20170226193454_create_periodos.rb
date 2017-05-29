class CreatePeriodos < ActiveRecord::Migration[5.0]
  def change
    create_table :periodos do |t|
      t.string :periodo
      t.date :fechai
      t.date :fechaf

      t.timestamps
    end
  end
end
