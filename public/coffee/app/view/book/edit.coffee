define [
  'jquery',
  'moustache',
  'backbone',
  'app/util/form_serializer',
  'app/model/book',
  'text!/../../templates/book/edit.html'
], ($, Moustache, Backbone, Serializer, Book, EditTemplate)->
  class EditView extends Backbone.View
    constructor: (@router)->
      super
    el: $("#books"),
    render: (options)->
      if options.id
        @book = new Book id: options.id
        @book.fetch
          success: (model)=>
            rendered = Moustache.render EditTemplate,model.toJSON()
            @.$el.html rendered
      else
        @.$el.html Moustache.render EditTemplate, {}
    events:
      'submit .edit-book-form': 'saveBook'
      'click .delete': 'deleteBook'
    saveBook: (event)->
      bookDetails = $(event.currentTarget).serializeForm()
      @book = new Book
      @book.save bookDetails,
        success: (book)=>
          @router.navigate '',
            trigger: true
      false
    deleteBook: (event)->
      answer = confirm "Are you sure you want to delete this book ?"
      if answer
        console.log @book.toJSON()
        @book.destroy
          request: ()=>
            console.log "start delete"
          sync: ()=>
            console.log "finish event"
          success: ()=>
            console.log "delete success"
            @router.navigate '',
              trigger: true
        false
  initialize = (router)->
    editView = new EditView(router)

  initialize:initialize