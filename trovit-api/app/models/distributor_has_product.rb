class DistributorHasProduct < ApplicationRecord

    belongs_to  :distributor, foreign_key: true
    belongs_to :product , foreign_key: true

end
