class Offer < ApplicationRecord

    validates :quantity, numericality: { only_integer: true }
    validates :date , presence: true, timeliness: {type: :datetime}

end
