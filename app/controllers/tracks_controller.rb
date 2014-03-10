class TracksController < ApplicationController
	respond_to :json

	def index
			respond_with Track.all
	end	



end
