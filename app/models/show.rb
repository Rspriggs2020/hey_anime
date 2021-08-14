class Show < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    validates :title, presence: true
    validates :genre, presence: true 
    validates :description, presence: true 
    validates :seasons, presence: true
    validates :rating, presence: true 
end