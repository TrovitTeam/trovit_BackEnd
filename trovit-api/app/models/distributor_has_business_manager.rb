class DistributorHasBusinessManager < ApplicationRecord

    belongs_to :distributor, foreign_key: true
    belongs_to :bussiness_manager, foreign_key: true

end
