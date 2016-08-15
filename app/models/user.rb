class User < ApplicationRecord
    has_secure_password
    validates :name, :studentNumber, uniqueness: true
    has_many :posts
    serialize :rtproflecture, Hash

=begin 
    def update_rtproflecture!(params)
        params.each do |key, value|
            self.rtproflecture[key] = value
        end
        self.save
    end
=end

    def admin?
        self.role == 'admin'
    end
    
end
