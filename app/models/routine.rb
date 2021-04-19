class Routine < ApplicationRecord

    belongs_to :user
    belongs_to :product
    has_many :reviews
    accepts_nested_attributes_for :product

    validates :title, presence: true
    validates :title, uniqueness: true
   
    scope :alpha, -> { order(:title) }

    def product_attributes=(product)

      # self.product = Product.find_by(name: product[:name])
      if self.product = Product.find_by(name: product[:name])
        self.product.update(content: product[:content])
      else
        self.product = Product.create(product)


      end

    end

end


