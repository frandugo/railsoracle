class Estudiante < ApplicationRecord
  has_many :acudientes
  accepts_nested_attributes_for :acudientes
  has_many :documentos
  accepts_nested_attributes_for :documentos
  has_many :direccions
  accepts_nested_attributes_for :direccions
  has_many :correos
  accepts_nested_attributes_for :correos
  has_many :telefonos
  accepts_nested_attributes_for :telefonos
end
