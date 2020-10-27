class SuggestionSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :artist_suggestion, :notable_songs, :description
end
