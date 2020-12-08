class User < ApplicationRecord
    has_many :positions
    has_many :contacts
    has_many :conections, through: :contacts
end
