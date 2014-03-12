# For more information see: http://emberjs.com/guides/routing/

MusicApp.Router.map ()->

	@resource 'tracks', ->
		@route 'edit', {path: '/:track_id/edit' }
	@resource 'track', {path: '/tracks/:track_id' }
	@resource 'trackNew', {path: '/tracks/new' }
	@resource 'albums'
	@resource 'album', { path: '/albums/:album_id'}
	@resource 'albumNew', { path: '/albums/new'}

