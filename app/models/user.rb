class User < ApplicationRecord
    has_many :positions
    has_many :contacts
    has_many :conections, through: :contacts

    validates :name, presence: true
    validates :email, presence: true 
end
