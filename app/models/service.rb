class Service < ApplicationRecord

	validates :nombre, presence: true
	validates :descripcion, presence: true
	validates_numericality_of :valor, :greater_than => -1

	enum categoria: [:Bebes, :Niños, :Adultos]
end
