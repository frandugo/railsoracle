class Notas3 < ActiveRecord::Migration[5.0]
  def change
    change_column :nota, :nota1, :decimal
    change_column :nota, :nota2, :decimal
    change_column :nota, :nota3, :decimal
    change_column :nota, :nota4, :decimal
  end
end
