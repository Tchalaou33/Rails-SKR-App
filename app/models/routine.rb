class Routine < ApplicationRecord

    belongs_to :user
    belongs_to :product
    accepts_nested_attributes_for :product

    validates :title, presence: true
    validates :title, uniqueness: true
    validate :not_a_duplicate

    #scope :alpha -> {order(:name)}

    def self.alpha
        order(:title)
      end

    def not_a_duplicate
        # if there is already an ice cream with that flavor && brand, throw an error
        routine = Routine.find_by(title: title, product_id: product_id)
        if !!routine && routine != self
          errors.add(:title, 'has already been added for that product')
        end
    end


    # scope :order_by_season, -> {order(:season)}
    # scope :cleas, -> {where()}

end


