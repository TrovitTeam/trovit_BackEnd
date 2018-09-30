class DistributorHasProduct < ApplicationRecord

    belongs_to  :distributor
    belongs_to :product 

end
