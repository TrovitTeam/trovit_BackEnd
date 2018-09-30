class Picture < ApplicationRecord

    validates :pictureType, presence: true, length: { minimum: 2 }, 
                    format: { with: /\A[a-zA-Z]+\z/, 
                        message: "only allows letters" }

    belongs_to :imageable, polymorphic: true

end
