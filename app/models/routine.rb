class Routine < ApplicationRecord

    belongs_to :user
    belongs_to :product
    accepts_nested_attributes_for :product


    # scope :order_by_season, -> {order(:season)}
    # scope :cleas, -> {where()}

end


