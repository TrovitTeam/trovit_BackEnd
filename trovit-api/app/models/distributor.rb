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
    has_many :offers

    def self.findMessages(distributor_id)
        joins(:messages).where(id: distributor_id).select("messages.message,messages.id,distributors.id")
    end

    def self.findOffers(distributor_id)
        joins(:offer).where(id: distributor_id)
    end

    def self.finProducts(distributor_id)
        joins(:products).where(id: distributor_id)
    end

    def findOffers(distributor_id)
        joins(:offers).where(id: distributor_id)
    end

    def findDistributor(distributor_id)
        joins(:bussiness_managers).where.(id: distributor_id)
    end

end
