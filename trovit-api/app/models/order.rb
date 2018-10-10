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

    belongs_to :message
    belongs_to :business_manager_id
    belongs_to :product

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
