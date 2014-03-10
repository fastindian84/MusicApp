MusicApp.AlbumsController = Ember.ArrayController.extend
	albums: ( ->
			MusicApp.Album.all()
			).property()
	totalCount: (->
		@get('albums').get('length')
		).property('albums.@each')
	tracksTotalCount:(->
			@get('tracks').get('length')
		).property('tracks.@each')

MusicApp.AlbumController = Ember.ObjectController.extend
	tracksTotalCount: (->
			@get('tracks_count')
		).property('tracks_count')

