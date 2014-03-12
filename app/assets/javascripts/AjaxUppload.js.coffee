 createRecord: (store, type, record) ->
    if (type is Tmm.Image) or (type is Tmm.Track) or (type is Tmm.Album)
      serializer = store.serializerFor(type)
      root = type.typeKey
      adapter = @
      data = {}
      data[root] = @serialize(record, { includeId: true })

      successCallback = (json) ->
        _data = serializer.normalize type, json[root], root
        store.didSaveRecord record, _data
      failureCallback = (xhr) ->
        adapter.didError(store, type, record, xhr)
        throw xhr
      @fileUploadAjax(@buildURL(root), "POST", { data: data }, type).then(successCallback, failureCallback).then(null, DS.rejectionHandler)
    else
      super(store, type, record)

  updateRecord: (store, type, record) ->
    if record.useAjaxUploadForm
      serializer = store.serializerFor(type)
      root = type.typeKey
      id = record.get("id")
      adapter = @
      data = {}
      data[root] = @serialize(record, { includeId: true })
      # Purge cache
      $.get("#{Tmm.storage_url}/purge/#{record.uri}") unless _.isEmpty record.uri
      successCallback = (json) ->
        record.useAjaxUploadForm = undefined
        payload = serializer.extract store, type, json, record.id, 'updateRecord'
        store.didSaveRecord record, payload
      failureCallback = (xhr) ->
        adapter.didError store, type, record, xhr
        throw xhr
      @fileUploadAjax(@buildURL(root, id), "PUT", { data: data }, type).then(successCallback, failureCallback).then(null, DS.rejectionHandler)
    else
      super(store, type, record)

  fileUploadAjax: (url, type, hash, model) ->
    adapter = @
    return new Ember.RSVP.Promise( (resolve, reject) ->
      hash = hash || {}
      hash.url = url
      hash.type = type
      hash.dataType = 'json'
      hash.context = adapter
      hash.success = (json) ->
        Ember.run(null, resolve, json)
      hash.error = (jqXHR, textStatus, errorThrown) ->
        Ember.run(null, reject, jqXHR)
      switch model
        when Tmm.Track then $('#upload_track').ajaxSubmit(hash)
        when Tmm.Album then $('#upload_album').ajaxSubmit(hash)
        else                $('#upload_form').ajaxSubmit(hash)
    )