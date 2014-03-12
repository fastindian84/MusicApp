MusicApp.TracksEditController = Ember.ObjectController.extend
	progressBar: false
	actions:
		submitAction:->
			@get('store').commit()
			@set('progressBar', true)
			# if @get('isLoaded')
				

				# @set('progressBar', false)
			@transitionToRoute 'albums'

