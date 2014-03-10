MusicApp.IndexRoute = Em.Route.extend
	redirect: -> @transitionTo 'albums'