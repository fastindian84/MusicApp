# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Track = DS.Model.extend
  title: DS.attr 'string'
  genre: DS.attr 'string'
  releaseDate: DS.attr 'date'
  album: DS.belongsTo 'MusicApp.Album'
