class User < ApplicationRecord
    has_secure_password
    validates :name, :studentNumber, uniqueness: true
    has_many :posts
end
