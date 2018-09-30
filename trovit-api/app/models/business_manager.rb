class BusinessManager < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :company, optional: true 
    has_many :distributor_has_bussiness_managers 
    has_many :distributors, through: :distributor_has_bussiness_managers
    has_many :orders, as: :orderable

end
