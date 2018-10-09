# == Schema Information
#
# Table name: business_managers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  company_id :integer
#

class BusinessManager < ApplicationRecord

    belongs_to :user, foreign_key: true
    belongs_to :company, foreign_key: true
    has_many :distributor_has_bussiness_managers 
    has_many :distributors, through: :distributor_has_bussiness_managers
    has_many :messages
    has_many :orders


    def self.findMessages(businessManager_id)
        joins(:messages).where(id: businessManager_id)
    end

    def self.findOrders(business_managers)
        joins(:orders).where(id: businessManager_id)
    end



end
