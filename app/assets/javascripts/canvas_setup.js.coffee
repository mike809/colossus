$ ->
  setup_canvas = (canvas_selector)->
    canvas = $(canvas_selector)
    context = canvas.getContext('2d')
    canvas.width = 1200
    canvas.height = 720

  setup_canvas('#my_canvas');
