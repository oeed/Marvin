# Who doesn't love the girl from the taco ad?
# by oeed

module.exports = (robot) ->
  robot.hear /(why\s*((can(')?t we have)|not))\s*both(\?)?/i, (msg) ->
    msg.send "¿Porque no los dos?\n\n![We fucking can.](http://ak-hdl.buzzfed.com/static/2015-03/26/19/imagebuzz/webdr05/anigif_optimized-29941-1427413465-1.gif)"