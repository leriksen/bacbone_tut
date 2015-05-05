define [
  'jquery',
], ($)->
  $.fn.serializeForm = ()->
    o = {}
    a = this.serializeArray()
    $.each a, ()->
      if o[this.name] != undefined
        if !o[this.name.push]
          o[this.name] = [o[this.name]]
        o[this.name].push(this.value or '')
      else
        o[this.name] = this.value or ''
    o