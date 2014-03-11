MusicApp.TracksEditController = Ember.ObjectController.extend
	actions:
		submitAction:->
			if @get('isDirty')
				@set('title', @get('title'))
				@set('cover', @get('cover'))
				# else
				# 	@set('cover', @get('data.cover'))		

			# console.log @get('data.cover')
			# console.log @get('cover')
				@get('store').commit()
			# @transitionToRoute ''

