MusicApp.TracksEditController = Ember.ObjectController.extend

	actions:
		submitAction:->
			@get('store').commit()
			@transitionToRoute 'albums'






		uploadFile: ->
#      debugger
#      console.log @get('song')
#      data = new FormData()
#      $.ajax
#        url: '/upload',
#        data: data,
#        processData: false,
#        type: 'GET',
#        success:  ( data ) ->
#          alert( data )

#			$("#upload_file").change(function(){
#				var filelist = $(this).context.files;
#				for( var i = 0; i < filelist.length; ++i ) {
#				          var fd = new FormData();
#				          fd.append('photo', filelist[i]);
#				          var form = $("<form method='POST' action='/upload' enctype='multipart/form-data'></form>");
#				          create_ajax_form(form, fd);     } }
#				          function create_ajax_form(obj, fd){
#				            obj.ajaxForm({
#				              data: { data: fd },
#				              beforeSend: function(e) {},
#				              uploadProgress: function(event, position, total, percentComplete) {},
#				              complete: function(data) {}   }); }
#
	  

	