# For more information see: http://emberjs.com/guides/routing/

MusicApp.Router.map ()->

	@resource 'tracks', ->
		@route 'edit', {path: '/:track_id/edit' }
	@resource 'track', {path: '/tracks/:track_id' }
	@resource 'albums'
	@resource 'album', { path: '/albums/:album_id'}

