class Documento < ApplicationRecord
  has_one :acudiente
  has_one :estudiante
end
