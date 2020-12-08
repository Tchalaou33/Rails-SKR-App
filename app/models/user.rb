class User < ApplicationRecord
    has_secure_password
    has_many :routines
    has_many :products, through: :routines

    validates :email, :username, presence: true 
    validates :email, :username, uniqueness: true

end
