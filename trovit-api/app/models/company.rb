class Company < ApplicationRecord
    
    validates :name, :location, presence: true, length: { minimum: 2 },
            format: { with: /\A[^`!@#\$%\^&*+_=]+\z/,
                message: "only allows letters" }
    
    validates :companyType, presence: true, length: { minimum: 2 }, 
                format: { with: /\A[^0-9]+\z/, 
                    message: "only allows letters" }

    has_many :business_managers

end
