class Category < ApplicationRecord

    has_many :opinion_categories

    has_many :opinions, through: :opinion_categories

    validates :name , presence: true

end
