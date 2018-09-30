class Message < ApplicationRecord

    validates :date, presence:true, timeliness: {type: :datetime}
    validates :message, presence: true,length: { minimum: 10 }

    has_many :orders, as: :orderable
    has_many :offers, as: :offerable

end