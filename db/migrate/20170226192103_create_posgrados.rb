class CreatePosgrados < ActiveRecord::Migration[5.0]
  def change
    create_table :posgrados do |t|
      t.string :nompos
      t.string :numtitulo
      t.integer :idpro

      t.timestamps
    end
  end
end
