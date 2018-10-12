# == Schema Information
#
# Table name: distributor_has_products
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  distributor_id :integer
#  product_id     :integer
#

class DistributorHasProduct < ApplicationRecord

    belongs_to  :distributor, foreign_key: true
    belongs_to :product , foreign_key: true

end
