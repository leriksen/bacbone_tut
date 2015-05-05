define [
  'jquery',
  'underscore',
  'backbone',
  'app/model/book'
], ($, _, Backbone, Book) -> 
  class Books extends Backbone.Collection
    url: 'http://localhost:8080/books',
    model: Book

  initialize = ()->
    books = new Books()

  initialize:initialize
