class Picture < ApplicationRecord

    validates :pictureType, presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, 
                        message: "only allows letters" }

    belongs_to :imageable, polymorphic: true, foreign_key: true

end
