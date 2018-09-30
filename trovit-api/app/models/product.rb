class Product < ApplicationRecord

    validates :price, quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :productType, :brand, :productName, :description, 
                presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[a-zA-Z]+\z/, 
                        message: "only allows letters" }
    validates :quantity, presence: true, numericality:{ only_integer: true }
end