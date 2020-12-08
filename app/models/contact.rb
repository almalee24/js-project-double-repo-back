class Contact < ApplicationRecord
    has_many :connections
    belongs_to :user
end
