class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre
  has_many :suggestions
end
