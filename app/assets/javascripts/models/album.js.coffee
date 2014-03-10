# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Album = DS.Model.extend
  title: DS.attr 'string'
  tracks_count: DS.attr 'number'
  releaseDate: DS.attr 'date'
  tracks: DS.hasMany 'MusicApp.Track', async: true
