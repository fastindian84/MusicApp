class TracksController < ApplicationController
	respond_to :json

	def index
			respond_with Track.all
	end	


	
	def show
		respond_with Track.find params[:id]
	end
	
	def update
		# logger params
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
