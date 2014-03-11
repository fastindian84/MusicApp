# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Track = DS.Model.extend
  title: DS.attr 'string'
  genre: DS.attr 'string'
  cover: DS.attr 'string'
  song: DS.attr 'string'
  
  album_id: DS.attr 'number'
  releaseDate: DS.attr 'date'
  album: DS.belongsTo 'MusicApp.Album'
