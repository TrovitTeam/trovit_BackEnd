class Product < ApplicationRecord

    validates :price, quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :productType, :brand, :productName, :description, 
                presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[a-zA-Z]+\z/, 
                        message: "only allows letters" }
    validates :quantity, presence: true, numericality:{ only_integer: true }

    has_many :distributors_has_products
    has_many :distributors, through: :distributors_has_products
    has_many :pictures, as: :imageable
    has_many :orders, as: :orderable
    has_many :offers, as: :offerable

end