class Message < ApplicationRecord

    validates :date, presence:true, timeliness: {type: :datetime}
    validates :message, presence: true,length: { minimum: 10 }

end