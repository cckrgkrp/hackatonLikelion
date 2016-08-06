class Proffessor < ApplicationRecord
    belongs_to :department
    has_many :proflectures
    has_many :lectures, through: :proflectures
end
