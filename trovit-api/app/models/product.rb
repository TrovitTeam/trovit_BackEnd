class Product < ApplicationRecord

    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :producType, :brand, :productName, 
                presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, 
                        message: "only allows letters" }
    validates :description, presence: true,length: { minimum: 10 }
    validates :quantity, presence: true, numericality:{ only_integer: true }

    has_many :distributors_has_products
    has_many :distributors, through: :distributors_has_products
    has_many :pictures, as: :imageable
    has_many :orders, as: :orderable
    has_many :offers, as: :offerable

end