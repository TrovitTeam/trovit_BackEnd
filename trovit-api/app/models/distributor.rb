class Distributor < ApplicationRecord

    belongs_to :user, optional: true
    has_many :distributor_has_bussiness_managers
    has_many :bussiness_managers, through: :distributor_has_bussiness_managers
    has_many :distributor_has_products
    has_many :products, through: :distributor_has_products
    has_many :offers, as: :offerable

end
