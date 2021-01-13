class OpinionCategory < ApplicationRecord
    belongs_to :opinion
    belongs_to :category
end
