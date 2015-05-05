requirejs.config
  paths:
    jquery:     'https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min',
    underscore: 'https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.2/underscore-min',
    backbone:   'https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.1.2/backbone-min',
    moustache:  'https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min'
    storage:    'https://cdnjs.cloudflare.com/ajax/libs/backbone-localstorage.js/1.1.16/backbone.localStorage-min',
    bootstrap:  'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min',
    text:       'https://cdnjs.cloudflare.com/ajax/libs/require-text/2.0.12/text.min'
  shim:
    bootstrap: ['jquery']
    storage:   ['bootstrap']
    backbone:
      deps: ['underscore', 'jquery'],
      exports: 'Backbone'
    underscore:
       exports: '_'
    text: ['backbone']

require ['app'], (App)->
  App.initialize();
