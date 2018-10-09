# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  pictureType :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Picture < ApplicationRecord

    validates :pictureType, presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, 
                        message: "only allows letters" }
    
    validates :pictureUrl, presence: true, length: {minimum: 10}

    belongs_to :imageable, polymorphic: true

end
