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
	actions: 
		editTrack: (track)->
			@transitionToRoute 'tracks.edit', track


#### ALBUM single
MusicApp.AlbumController = Ember.ObjectController.extend
	isEditing: false
	
	tracksWithoutAlbum: (->
				@get('tracksAll').filterBy 'album_id', null
		).property('tracksAll.@each.album_id')

	# collectionView
	actions:
		removeTrack: (track) ->
			unless @get('isSaving') 
        @get('tracks').removeObject(track)
        @store.commit()
        track.set('album_id', null)

		editAlbum: ->
			@set 'isEditing', true

		backToAlbum: ->	
			@set 'isEditing', false	

		addToAlbum:(track) ->	
			unless @get('isSaving') 
        @get('tracks').pushObject(track)
        @get('store').commit()
        track.set('album_id', @get('id'))





#### ALBUM NEw
MusicApp.AlbumNewController = Ember.ObjectController.extend
	currentPath: (->
			 MusicApp.set('currentPath', @get('currentPath'))
	  ).observes('currentPath')

	actions:
		submitAlbum: ->	
			m = MusicApp.Album.createRecord	
				title: @get('title')
				release_date: @get('release_date')
				tracks_count: 0
			m.save()
			@transitionToRoute('albums')


