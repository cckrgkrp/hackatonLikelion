class User < ApplicationRecord
    has_secure_password
    validates :name, :studentNumber, :email, uniqueness: true
end
