class Opinion < ApplicationRecord
    belongs_to :author, class_name: "User"

    has_many :opinion_categories
    has_many :categories,  through: :opinion_categories
end
