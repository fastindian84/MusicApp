MusicApp.TracksEditController = Ember.ObjectController.extend
	actions:
		submitAction:->
			@set('title', @get('title') )
			@set('cover', @get('cover'))
			@get('store').commit()

