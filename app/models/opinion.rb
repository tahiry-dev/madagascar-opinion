class Opinion < ApplicationRecord
    belongs_to :author, class_name: "User"
    
    validates :text, presence: true, length: { minimum: 10 }
end
