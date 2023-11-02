class User < ApplicationRecord
    validates :password, presence: true, length: { minimum: 6 }
    
    belongs_to :city
    has_many :gossips
    has_secure_password
   
end
