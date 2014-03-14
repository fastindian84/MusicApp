MusicApp.TracksEditController = Ember.ObjectController.extend
	actions:
		submitAction:->
			@get('store').commit()
			@transitionToRoute 'albums'




