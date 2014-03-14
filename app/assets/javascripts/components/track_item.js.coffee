MusicApp.TrackItemComponent = Ember.Component.extend

	trackHaveSong: (->
			@get('track.song') is ''
		).property('track.song')
	actions:
		sendFile: ->
			url_file = '/tracks/' + @get('track.id')+ '/download'
			window.location =  url_file



