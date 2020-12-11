class Contact < ApplicationRecord
    belongs_to :user
    has_many :connections, dependent: :destroy 
    accepts_nested_attributes_for :connections

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true

    def created_time
        self.created_at.strftime("%b %e -- %l:%M %p")
    end
end
