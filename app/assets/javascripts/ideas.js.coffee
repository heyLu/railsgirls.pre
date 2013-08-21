$ ->
  $(".idea a[data-remote]").on 'ajax:success', (ev) ->
    ev.target.parentElement.parentElement.parentElement.remove()
