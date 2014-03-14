MusicApp.FileUploadComponent = Ember.Component.extend
  fileAdded: false
  uploadFinished: false



  change: (e)->
    


    input = e.target
    @set('songFile', input.files[0].name)
    unless Ember.isEmpty(input.files)
      Ember.set(this, 'files', input.files[0])
      @set('fileAdded', true)


  actions:
    start:->
      @$('input#upload').click()
    removeFile: ->
      @set('fileAdded', false)
      @set('uploadFinished', true)

    upload: ->
      self = @
      uploader = Ember.Uploader.create
        url: "/tracks/" + @get('track_id') + "/upload"
      uploader.upload @get('files')
      uploader.on 'didUpload', ->
        self.set('uploadFinished', true)
       










