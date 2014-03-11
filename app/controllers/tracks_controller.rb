class TracksController < ApplicationController
	respond_to :json

	def index
			respond_with Track.all
	end	


	
	def show
		respond_with Track.find params[:id]
	end
	
	def update
		respond_with Track.update params[:id], tracks_params
	end


private 
	def tracks_params
		params.require(:track).permit(:title, :album_id, :genre, :cover, :release_date)
	end


end
