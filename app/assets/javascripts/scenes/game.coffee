Crafty.scene("game", ->
  Crafty.background("#000")

  pivot = {x: Crafty.viewport.width / 2, y: Crafty.viewport.height / 2}

<<<<<<< HEAD


  window.player = Crafty.e("2D, DOM, Color, MoveInCircle, Collision").attr(h:10, w:10).color("#Fff").pivot(origin).onHit("Collision",
    -> @crash()
  )
  window.track  = Crafty.e("2D, DOM, Color, Track")
=======
  window.player = Crafty.e("2D, DOM, Color, MoveInCircle, Collision").attr(h:10, w:10).color("#Fff").pivot(pivot)
  window.track  = Crafty.e("Track").attrs(
                    pivot: pivot
                    innerRadius: Config.cycleInnerRadius
                    outerRadius: Config.cycleOuterRadius
                    segments: Config.cycleSegments
                  ).color("#ff0000").prepare()
>>>>>>> 5bccb55ea9cafa8e5c0abd6982611120352f764f

  window.actionQueue = Crafty.e("2D, DOM, ActionBag, Text").attr({ actions: [], x: 500, y: 0, w: 200, h: 300 }).actionBag("gameModifiers", ["Pull", "Push", "Fork", "Merge"], ((action) ->
    @actions.push(action)
    if (@actions.length == 5)
      topAction = @actions.shift()
      # dispatch action to other component
    @text(@actions.join("\r\n"))
  ), 1000)
)

