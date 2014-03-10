class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :release_date
  belongs_to :album
end
