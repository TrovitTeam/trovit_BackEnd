# == Schema Information
#
# Table name: messages
#
#  id                   :integer          not null, primary key
#  message              :string
#  date                 :date
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  distributor_id       :integer
#  business_managers_id :integer
#  messageable_type     :string
#  messageable_id       :integer
#

class Message < ApplicationRecord

    validates :date, presence:true, timeliness: {type: :datetime}
    validates :message, presence: true,length: { minimum: 10 },
                format: {with: /\A[^`!@#%\^&*+_=]+\z/,
                        message:"only numbers and letters"}

    
    def selectFive
    end

end
