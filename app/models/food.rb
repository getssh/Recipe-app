class Food < ApplicationRecord
    belongs_to :user
  
    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :measurement_unit, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
end
