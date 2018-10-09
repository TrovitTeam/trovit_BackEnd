# == Schema Information
#
# Table name: distributors
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Distributor < ApplicationRecord

    belongs_to :user, foreign_key: true
    has_many :distributor_has_bussiness_managers
    has_many :bussiness_managers, through: :distributor_has_bussiness_managers
    has_many :distributor_has_products
    has_many :products, through: :distributor_has_products
    has_many :messages
end
