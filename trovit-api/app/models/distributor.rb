class Distributor < ApplicationRecord

    belongs_to :user, foreign_key: true
    has_many :distributor_has_bussiness_managers
    has_many :bussiness_managers, through: :distributor_has_bussiness_managers
    has_many :distributor_has_products
    has_many :products, through: :distributor_has_products
    
    has_many :offers, as: :offerable
    has_many :messages, as: :messageable
end