class Departamento < ApplicationRecord
  has_many :municipios
  accepts_nested_attributes_for :municipios, reject_if: proc {
    |attributes| attributes ['nommun'].blank?
  }, allow_destroy: true
  validates :nomdep, presence: true
  validates_associated :municipios
  def to_s
    nomdep
  end
end
