do ($ = jQuery) ->
  $('body').keyup (e) ->
    comment = $('.mentions-input-box textarea')

    # Leave event alone when key is not ESC
    unless e.keyCode == 27
      return

    # No comment texarea -> do nothing
    if comment.lenght == 0
      return

    # Comment empty -> proceed as normal
    if comment.val().length == 0
      return

    unless confirm 'Comment is not empty, are you sure?'
      return false

