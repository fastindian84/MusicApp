MusicApp.TracksRoute = Em.Route.extend ->
	model: ->
		MusicApp.Track.find()