class Artist < ApplicationRecord
    has_many :suggestions
    validates :name, :genre, presence: true
end
