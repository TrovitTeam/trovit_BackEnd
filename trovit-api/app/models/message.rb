class Message < ApplicationRecord

    validates :date, presence:true, timeliness: {type: :datetime}
    validates :message, presence: true,length: { minimum: 10 }

    has_many :offers
    has_many :requests

end