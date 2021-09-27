class PropertyList < ApplicationRecord
    validates  :property ,  presence: true
    validates  :rent ,  presence: true
    validates  :age ,  presence: true
    validates  :address ,  presence: true
    validates  :remark ,  presence: true

    has_many :properties
    accepts_nested_attributes_for :properties, allow_destroy: true
end
