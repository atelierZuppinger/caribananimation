$ = require('zepto-browserify').$

$ () ->
  finish = $ '#slide5'
  slides = $ 'div, img'
  ###
  onFinish = (els) ->
      slides = []
      for i in [0...els.length]
        elm = els[i]
        newOne = elm.cloneNode(true)
        elm.parentNode.replaceChild(newOne, elm)
        slides.push(newOne)
  setInterval () ->
      onFinish(slides)
  , 7000
  ###