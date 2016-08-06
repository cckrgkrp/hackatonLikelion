class Lecture < ApplicationRecord
    belongs_to :department
    has_many :proflectures
    has_many :proffessors, through: :proflectures
end
