class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.string :tipodoc
      t.numeric :numdoc

      t.timestamps
    end
  end
end
