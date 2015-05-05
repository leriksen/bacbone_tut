define [
  'jquery',
  'underscore',
  'backbone'
], ($, _, Backbone)->
  class Book extends Backbone.Model
    urlRoot: 'http://localhost:8080/books'