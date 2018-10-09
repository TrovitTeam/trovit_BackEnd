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
#  ordereable_type     :string
#  ordereable_id       :integer
#

class Order < ApplicationRecord

    validates :quantity, numericality: { only_integer: true }
    validates :date , presence: true, timeliness: {type: :datetime}

    belongs_to :orderable, polymorphic: true

    def self.cheaper_than(price)
        where("price < ?", price)
    end

    def self.greater_than(price)
        where("price > ?", price)
    end

    def self.equal(price)
        where("price = ?", price)
    end


end
