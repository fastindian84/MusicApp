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

	tracks: (->
			@get('tracksAll').filterBy 'album_id', null
		).property('tracksAll.@each.album_id')


#### ALBUM single
MusicApp.AlbumController = Ember.ObjectController.extend
	isEditing: false
		
	tracksTotalCount: (->
			@get('tracks_count')
		).property('tracks_count')

	
	tracksWithoutAlbum: (->
				@get('tracksAll').filterBy 'album_id', null
		).property('tracksAll.@each.album_id')


	actions:
		removeTrack: (track) ->
			@get('tracks').removeObject(track)
			tracks_remain = @get('tracks_count') - 1 
			track.set('album_id', null)

			@set('tracks_count', tracks_remain)
			@store.commit()

		editAlbum: ->
			@set 'isEditing', true

		backToAlbum: ->	
			@set 'isEditing', false	

		addToAlbum:(track) ->	
			@get('tracks').pushObject(track)
			
			track.set('album_id', @get('id'))
			tracks_remain = @get('tracks_count') + 1 
			@set('tracks_count', tracks_remain)
			@get('store').commit()