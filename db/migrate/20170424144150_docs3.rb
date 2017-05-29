class Docs3 < ActiveRecord::Migration[5.0]
  def change
      add_column :estudiantes, :numdoc, :string, :limit => 10
      add_column :estudiantes, :tipodoc, :string, :limit=> 2
      add_column :docentes, :numdoc, :string, :limit => 10
      add_column :docentes, :tipodoc, :string, :limit => 2
      add_column :acudientes, :numdoc, :string, :limit => 10
      add_column :acudientes, :tipodoc, :string, :limit => 2
  end
end
