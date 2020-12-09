class Position < ApplicationRecord
    belongs_to :user, optional: true 

    validates :company_name, presence: true
    validates :location, presence: true
    validates :description, presence: true
    validates :title, presence: true
end