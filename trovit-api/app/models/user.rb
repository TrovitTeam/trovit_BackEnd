class User < ApplicationRecord

    validates :name, :location, :userType, presence: true, length: { minimum: 2 },
                format: { with: /\A[a-zA-Z]+\z/,
                    message: "only allows letters" }
    validates :phone, presence: true, uniqueness: true, 
                numericality: { only_integer: true }
    validates :email, presence: true, uniqueness: true,
                format: { with: URI::MailTo::EMAIL_REGEXP } 

    has_many :pictures, as: :imageable
end
