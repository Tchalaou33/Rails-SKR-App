class Product < ApplicationRecord
    has_many :routines
    had_many :users, through: :routines
end
