class Product < ApplicationRecord
    # creator of it
    # belongs_to :user 
    # belongs_to :review
    
    has_many :routines
    # ppl who have created one
    has_many :users, through: :routines
    # accepts_nested_attributes_for :product
    # validates :name, presence: true

  

end
