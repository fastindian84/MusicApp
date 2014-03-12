# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Album = DS.Model.extend
  title: DS.attr 'string'
  tracks_count: DS.attr 'number', { defaultValue: 0 }
  release_date: DS.attr 'date', { defaultValue: new Date() }
  formattedDate: (->
      date = @get('release_date')
      format = 'DD.MM.YYYY'
      moment(date).format(format)
    ).property('release_date')
  tracks: DS.hasMany 'MusicApp.Track', async: true
