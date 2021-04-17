require 'securerandom'

class User < ApplicationRecord
    has_secure_password
    has_many :routines
    has_many :routined_products, through: :routines, source: :product

    has_many :products

    validates :email, :username, presence: true 
    validates :email, :username, uniqueness: true

    def self.find_with_omniauth(auth)
        self.find_or_create_by(uid: auth[:uid], email: auth[:email]) do |u|
            u.username = auth[:info][:name]
            u.email = auth[:info][:email]
            u.password = SecureRandom.hex(16)
         end 
    end

end
