MusicApp.FileUploadComponent = Ember.Component.extend                   
  # tagName: 'input'                                     
  # attributeBindings: ['type', 'id']                     
  # type: 'file' 
                           
  # change: (e)->       
  #   view = this                                
  #   reader = new FileReader()                                         
  #   reader.onload = (e)->             
  #     view.set('file', e.target.result)                    
  #   reader.readAsText(e.target.files[0]) 

  actions: 
    start: ->
    	# console.log @.$().find('input')
      that = @
      input = @.$().find('input')
      input.click()
      input.change ( event ) ->
        Ember.run( that, 'readFileData', @files )

  classNames: [ 'canvas-file']

  
  readFileData: ( files ) ->
    if files.length 
	    file = @get( 'file' )
	    file.readAsDataURL( files[0] )
	    console.log files

  resetFile: ->
    that = @
    file = new FileReader()
    file.onload = ( event ) ->
      that.resetFile()
    @set( 'file', file )

