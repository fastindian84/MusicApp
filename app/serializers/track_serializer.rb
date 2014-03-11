class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :release_date, :album_id, :cover, :song
 

end
