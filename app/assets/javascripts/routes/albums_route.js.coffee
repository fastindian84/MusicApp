MusicApp.AlbumsRoute = Ember.Route.extend
	model: -> 
		MusicApp.Album.find()
	setupController: (controller, model)->	
		controller.set('model', model)
		controller.set('tracks', MusicApp.Track.find())


MusicApp.AlbumRoute = Ember.Route.extend
	model: (params)-> 
		@store.find('album', params.album_id)

