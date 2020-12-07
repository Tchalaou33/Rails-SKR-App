class User < ApplicationRecord
    has_secure_password
    has_many :routines
    has_many :products, through: :routines

    validates :email, presence: true 
    validates :email, uniqueness: true

end
