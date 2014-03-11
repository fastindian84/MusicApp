# For more information see: http://emberjs.com/guides/routing/

MusicApp.Router.map ()->

	@resource 'tracks'
	@resource 'track', {path: '/tracks/:track_id' }
	@resource 'albums'
	@resource 'album', { path: '/albums/:album_id'}

