# for more details see: http://emberjs.com/guides/models/defining-models/

MusicApp.Image = DS.Model.extend
  imagable: DS.belongsTo 'MusicApp.Imagable'
