class Department < ApplicationRecord
    has_many :proffessors
    has_many :lectures
    has_many :proflectures
end
