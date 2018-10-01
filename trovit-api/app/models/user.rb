class User < ApplicationRecord

    validates :name, :location, :userType, presence: true, length: { minimum: 2 },
                format: { with: /\A[^`!@\$%\^&*+_=]+\z/,
                    message: "only allows letters" }
    validates :phone, presence: true, uniqueness: true, 
                numericality: true, length: {minimum: 7}
    validates :email, presence: true, uniqueness: true,
                format: {with: URI::MailTo::EMAIL_REGEXP} 

    has_many :pictures, as: :imageable
end
