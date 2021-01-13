class Category < ApplicationRecord
    has_many :opinion_categories
    has_many :opinions, through: :opinion_categories
end
