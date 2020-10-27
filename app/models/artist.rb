class Artist < ApplicationRecord
    has_many :suggestions
    validates :name, :genre, presence: true
    validates :name, uniqueness: { case_sensitive: false }
end
