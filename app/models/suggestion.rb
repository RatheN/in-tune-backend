class Suggestion < ApplicationRecord
    belongs_to :artist
    validates :artist_suggestion, presence: true
end
