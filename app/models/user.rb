class User < ApplicationRecord
    has_secure_password
    has_many :routines
    has_many :routined_products, through: :routines, source: :product

    has_many :products

    validates :email, :username, presence: true 
    validates :email, :username, uniqueness: true

    def self.find_with_omniauth(auth)
        binding.pry
    end

end
