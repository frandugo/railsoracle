class Municipio < ApplicationRecord
  has_one :departamento
  validates :nommun, presence: true

  def to_s
    nommun
  end
end
