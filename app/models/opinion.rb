class Opinion < ApplicationRecord
    belongs_to :author, class_name: "User"
    
    has_many_attached :images
    validates :text, presence: true, length: { minimum: 10 }
end
