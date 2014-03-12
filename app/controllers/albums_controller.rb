class AlbumsController < ApplicationController
	respond_to :json

	def index 
		respond_with Album.all
	end

	def show
		respond_with Album.find(params[:id])
	end			

	def create
		respond_with Album.create params_album
	end		

	def update
		respond_with Album.update params[:id], params_album
	end	
	
	def destroy
		respond_with Album.destroy params[:id]
	end	
	


private
	def params_album
		params.require(:album).permit(:title, :track_ids, :tracks_count, :release_date)
	end



end
