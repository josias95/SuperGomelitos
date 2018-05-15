class Tracing < ApplicationRecord

    validates :descripcion, presence: true
    validates_numericality_of :valor, :greater_than => -1
end
