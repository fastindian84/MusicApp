# For more information see: http://emberjs.com/guides/routing/

MusicApp.Router.map ()->

  @resource 'tracks'
  @resource 'albums'
  @resource('album', { path: '/albums/:album_id'})

