class AddCoverToImages < ActiveRecord::Migration
  def change
  	add_attachment :tracks, :cover
  	add_attachment :tracks, :song
  end
end
