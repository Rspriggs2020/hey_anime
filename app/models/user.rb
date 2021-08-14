class User < ActiveRecord::Base
    
    has_many :reviews
    has_many :shows, through: :reviews

    validates :email, presence: true
    validates :username, presence: true
   
    has_secure_password

end