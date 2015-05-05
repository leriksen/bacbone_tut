define [
  'jquery',
  'underscore',
  'backbone',
  'app/view/books/list',
  'app/view/book/edit'
], ($, _, Backbone, BooksList, BookEdit) -> 
  class AppRouter extends Backbone.Router
    routes:
      ''         : 'showBooks',
      'new'      : 'editBook',
      'edit/:id' : 'editBook'

  initialize = ()->
    approuter = new AppRouter()
    approuter.on 'route:showBooks', ()->
      booksList = BooksList.initialize()
      booksList.render()

    approuter.on 'route:editBook', (id)->
      bookEdit = BookEdit.initialize approuter
      bookEdit.render id: id

    Backbone.history.start pushState: true

    approuter

  initialize:initialize