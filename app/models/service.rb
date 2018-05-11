class Service < ApplicationRecord

	validates :nombre, presence: true
	validates :descripcion, presence: true
	validates_numericality_of :valor, :greater_than => -1

	enum categoria: [:Bebes, :Niños, :Adultos]
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100"}
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
