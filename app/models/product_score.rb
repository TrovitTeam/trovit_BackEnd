class ProductScore < ApplicationRecord

    belongs_to :product, optional: true
    belongs_to :business_manager, optional: true
end
