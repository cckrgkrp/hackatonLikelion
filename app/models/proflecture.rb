class Proflecture < ApplicationRecord
    belongs_to :proffessor
    belongs_to :lecture
    belongs_to :department
    has_many :posts
end
