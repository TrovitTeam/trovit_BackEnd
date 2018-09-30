class Order < ApplicationRecord

    validates :quantity, numericality: { only_integer: true }
    validates :date , presence: true, timeliness: {type: :datetime}

    belongs_to :bussiness_manager, optional: true
    belongs_to :message, optional: true
    belongs_to :product, optional: true

end
