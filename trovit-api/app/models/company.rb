class Company < ApplicationRecord
    
    validates :name , :companyType, :location, presence: true, length: { minimum: 2 }, 
                format: { with: /\A[a-zA-Z]+\z/, 
                    message: "only allows letters" }

end
