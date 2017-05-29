class Acudiente < ApplicationRecord
  has_one :estudiante
  has_many :documentos
  accepts_nested_attributes_for :documentos
end
