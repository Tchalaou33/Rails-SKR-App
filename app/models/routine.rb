class Routine < ApplicationRecord

    belongs_to :user
    belongs_to :product


    # scope :order_by_season, -> {order(:season)}
    # scope :cleas, -> {where()}

end


