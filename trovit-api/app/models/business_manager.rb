class BusinessManager < ApplicationRecord

    belongs_to :user, foreign_key: true
    belongs_to :company, foreign_key: true
    has_many :distributor_has_bussiness_managers 
    has_many :distributors, through: :distributor_has_bussiness_managers
    
    has_many :orders, as: :orderable
    has_many :messages, as: :messageable

end
