class Product < ApplicationRecord
    has_many :routines
    has_many :users, through: :routines

    belongs_to :user
    belongs_to :review

end
