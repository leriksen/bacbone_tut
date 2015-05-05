define [
  'jquery',
  'underscore',
  'backbone',
  'moustache'
  'app/collection/books',
  'text!/../../templates/books/list.html'
], ($, _, Backbone, Moustache, Books, ListTemplate)->
  class BooksListView extends Backbone.View
    constructor: ()->
      @books = Books.initialize()
      super
    el: $("#books"),
    render: ()->
      @books.fetch
        success: (books)=>
          rendered = Moustache.render ListTemplate,
            books: @books.toJSON() # moustache expects a named JSON array
          @.$el.html rendered

  initialize = ()->
    bookListView = new BooksListView()

  initialize:initialize