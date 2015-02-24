$ ->
  $('.comments-show .comment-reply-link').click (e) ->
    e.preventDefault()
    console.log(@)
    $(@).parent().siblings('.comment-form').toggle 'fast'
