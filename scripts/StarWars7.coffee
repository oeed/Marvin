
module.exports = (robot) ->
  robot.hear /star wars ?v?i?i?7?/i, (msg) ->
    msg.send "No Spoilers! [NO](http://static1.squarespace.com/static/51b3dc8ee4b051b96ceb10de/t/56322bcce4b091d44fcad8ca/1446128588802/)"
