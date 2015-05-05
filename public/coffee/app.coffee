define [
  'jquery',
  'underscore',
  'backbone',
  'storage',
  'bootstrap',
  'app/router/approuter',
  'app/util/underscore',
], ($, _, Backbone, Storage, Bootstrap, Router, Underscore)->
  initialize = () ->
    Router.initialize()

  initialize: initialize
