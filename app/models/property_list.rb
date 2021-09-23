class PropertyList < ApplicationRecord
    has_many :properties
    accepts_nested_attributes_for :properties
end
