class AddTracksCountToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :tracks_count, :integer, default: 0
  end
end
