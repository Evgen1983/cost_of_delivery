# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#  add autocomplete to from and where fields
$ ->
  $('[name="delivery[from]"]').kladr
    token: '568b84f80a69de802f8b45bb'
    type: $.kladr.type.city
  $('[name="delivery[where]"]').kladr
    token: '568b84f80a69de802f8b45bb'
    type: $.kladr.type.city
  return
