MusicApp.TracksEditController = Ember.ObjectController.extend
	actions:
		submitAction:->
			if @get('isDirty')
				@get('store').commit()
			@transitionToRoute 'albums'

