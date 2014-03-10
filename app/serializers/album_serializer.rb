class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :tracks_count
  # embed :ids
  has_many :tracks
end
