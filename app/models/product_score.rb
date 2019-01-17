class ProductScore < ApplicationRecord

    belongs_to :product, optional: true
    belongs_to :business_manager, optional: true
    validates_uniqueness_of :product_id, scope: :business_manager_id
    
end
