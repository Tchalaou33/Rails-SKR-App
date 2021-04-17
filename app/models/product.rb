class Product < ApplicationRecord
    
    has_many :routines
    has_many :users, through: :routines
    # accepts_nested_attributes_for :product
    validates :content, presence: true

    scope :alpha, -> {order(:name)}

  

end
