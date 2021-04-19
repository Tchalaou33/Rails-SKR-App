class Review < ApplicationRecord
    belongs_to :user
    belongs_to :routine
   
    validates :content, presence: true
    validates :user_id, presence: true
    validates :product_id, presence: true

end


# "/product/1/reviews/new"

# "/product/:product_id/reviews/:id"

# params[:product_id]
# params[:id]

# new, create, index


