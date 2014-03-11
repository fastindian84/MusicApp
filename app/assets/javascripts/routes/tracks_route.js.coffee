MusicApp.TracksRoute = Em.Route.extend
	model: ->
		MusicApp.Track.find()

MusicApp.TrackRoute = Ember.Route.extend 
	model: (params)-> 
		@store.find('track', params.track_id)

