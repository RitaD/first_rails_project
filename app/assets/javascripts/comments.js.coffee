$ ->
  $('.comments-show .comment-reply').click (e) ->
    e.preventDefault()
    console.log(@)
    $(@).parent().siblings('.comment-form').toggle 'fast'
