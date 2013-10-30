$ ->
  # Start song on scroll
  $(window).scroll(-> $("#counting-stars").get(0).play())

  # Initialize scrolling controller
  controller = $.superscrollorama()

  # Do things with lines
  fades = $(".intro2-line").length
  for f in [1..fades]
    controller.addTween("#intro2-line#{f}", TweenMax.from($("#intro2-line#{f}"), 1, {css: {opacity: 0}}))

  # Do things with friends and words
  people = $(".friend").length
  for p in [1..people]
    controller.addTween("#friend#{p}", TweenMax.to(
      $("#friend#{p}"), 1, {css: {
        opacity: 1
      }}
    ))

    controller.addTween("#word#{p}", TweenMax.to(
      $("#word#{p}"), 0.5, {css: {
        # width: "160px"
        # height: "160px"
        # "line-height": "160"
        # "font-size": "18px"
        "opacity": 1
      }}
    ))

  # Last line!
  controller.addTween("#end-line1", TweenMax.from(
    $("#end-line1"), 1, {css: {
      opacity: 0
    }}
  ))

  # I LOVE YOU SHIRLEY <3