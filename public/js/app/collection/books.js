// Generated by CoffeeScript 1.9.0
(function() {
  var __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    __hasProp = {}.hasOwnProperty;

  define(['jquery', 'underscore', 'backbone', 'app/model/book'], function($, _, Backbone, Book) {
    var Books, initialize;
    Books = (function(_super) {
      __extends(Books, _super);

      function Books() {
        return Books.__super__.constructor.apply(this, arguments);
      }

      Books.prototype.url = 'http://localhost:8080/books';

      Books.prototype.model = Book;

      return Books;

    })(Backbone.Collection);
    initialize = function() {
      var books;
      return books = new Books();
    };
    return {
      initialize: initialize
    };
  });

}).call(this);