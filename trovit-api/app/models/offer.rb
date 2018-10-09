# == Schema Information
#
# Table name: offers
#
#  id              :integer          not null, primary key
#  quantity        :integer
#  date            :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  message_id      :integer
#  product_id      :integer
#  distributor_id  :integer
#  offereable_type :string
#  offereable_id   :integer
#

class Offer < ApplicationRecord

    validates :quantity, numericality: { only_integer: true }
    validates :date , presence: true, timeliness: {type: :datetime}
    belongs_to :offerable, polymorphic: true

end
