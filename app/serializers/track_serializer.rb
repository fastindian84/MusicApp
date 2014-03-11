class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :release_date, :album_id, :cover
 

  # def cover
  # 	if object.cover.nil?
  # 	'assets/iTunes.png'
  # 	else 
  # 	 object.cover
  # 	end

  # end
  
end
