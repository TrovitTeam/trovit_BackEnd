# == Schema Information
#
# Table name: orders
#
#  id                  :integer          not null, primary key
#  quantity            :integer
#  date                :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_id          :integer
#  message_id          :integer
#  business_manager_id :integer
#

class Order < ApplicationRecord

    validates :quantity, numericality: { only_integer: true }
    validates :date , presence: true, timeliness: {type: :datetime}

    belongs_to :message , optional: true 
    belongs_to :business_manager_id, optional: true
    belongs_to :product,  optional: true

    def self.cheaper_than(quantity)
        where("quantity < ?", quantity)
    end

    def self.greater_than(quantity)
        where("quantity > ?", quantity)
    end

    def self.equal(quantity)
        where("quantity = ?", quantity)
    end


end
