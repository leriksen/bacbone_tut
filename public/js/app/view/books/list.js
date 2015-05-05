// Generated by CoffeeScript 1.9.0
(function() {
  var __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    __hasProp = {}.hasOwnProperty;

  define(['jquery', 'underscore', 'backbone', 'moustache', 'app/collection/books', 'text!/../../templates/books/list.html'], function($, _, Backbone, Moustache, Books, ListTemplate) {
    var BooksListView, initialize;
    BooksListView = (function(_super) {
      __extends(BooksListView, _super);

      function BooksListView() {
        this.books = Books.initialize();
        BooksListView.__super__.constructor.apply(this, arguments);
      }

      BooksListView.prototype.el = $("#books");

      BooksListView.prototype.render = function() {
        return this.books.fetch({
          success: (function(_this) {
            return function(books) {
              var rendered;
              rendered = Moustache.render(ListTemplate, {
                books: _this.books.toJSON()
              });
              return _this.$el.html(rendered);
            };
          })(this)
        });
      };

      return BooksListView;

    })(Backbone.View);
    initialize = function() {
      var bookListView;
      return bookListView = new BooksListView();
    };
    return {
      initialize: initialize
    };
  });

}).call(this);
