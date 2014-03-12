#= require handlebars
#= require ember
#= require ember-data
#= require ember-uploader.min.js

#= require_self
#= require music_app

# for more details see: http://emberjs.com/guides/application/
window.MusicApp = Ember.Application.create
	LOG_TRANSITIONS: true, 
  LOG_TRANSITIONS_INTERNAL: true 
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
  currentPath: ''


