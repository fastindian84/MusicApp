class TracksController < ApplicationController
	respond_to :json

	def index
			respond_with Track.all
	end	

	def upload
   track = Track.find(params[:id])
   track.update_attributes song: params[:file]
   render nothing: true
	end	

	def download
		track = Track.find(params[:id])
		if !track.song.blank?
			file_name = track.song_file_name
			song_file = Rails.root.join('public', 'assets', 'tracks', "#{track.id}", "#{file_name}") 
			send_file song_file, filename: file_name
		else
			respond_with track
		end	
	end

	
	def show
		respond_with Track.find params[:id]
	end
	
	def update
		respond_with Track.update params[:id], tracks_params
	end


private 
	def tracks_params
		validate_cover
		params.require(:track).permit(:title, :album_id, :genre, :cover, :song, :release_date)
	end

	def validate_cover
  params[:track].delete 'cover' if params[:track]['cover'].include? 'assets'
  params[:track].delete 'song' if params[:track]['song'].include? 'assets'
end


end
