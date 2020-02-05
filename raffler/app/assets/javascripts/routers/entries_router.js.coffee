class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'
                
  initialize: ->
    @collection = new Raffler.Collections.Entries()
    console.log "Router before fetch"
    console.log @collection
    @collection.fetch
      async: false
    console.log "Router after fetch"
    console.log @collection
    
  index: ->
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"