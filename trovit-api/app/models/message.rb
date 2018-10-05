class Message < ApplicationRecord

    validates :date, presence:true, timeliness: {type: :datetime}
    validates :message, presence: true,length: { minimum: 10 },
                format: {with: /\A[^`!@#%\^&*+_=]+\z/,
                        message:"only numbers and letters"}
end