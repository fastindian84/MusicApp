# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Album = DS.Model.extend
	title: DS.attr 'string'
	tracksCount: DS.attr 'number', { defaultValue: 0 }
	releaseDate: DS.attr 'date', { defaultValue: new Date() }
	tracksTotalCount: (->
		@get('tracks.length')
	).property('tracks.@each')

	formattedDate: (->
	  date = @get('release_date')
	  format = 'DD.MM.YYYY'
	  moment(date).format(format)
	).property('releaseDate')
	tracks: DS.hasMany 'MusicApp.Track'
