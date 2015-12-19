# More horribly depressing quotes for ol' Marvin
# by oeed

helpQuotes = [
  "It won’t work."
  "I am at a rough estimate thirty billion times more intelligent than you..."
  "Here I am, brain the size of a planet and you ask me to help you. Call that job satisfaction? ‘Cos I don’t."
]

ideasQuotes = [
  "I have a million ideas. They all point to certain death."
  "Sounds awful."
]

helloQuotes = [
  "What do you want now..."
  "Why don't you leave me to die in peace."
  "You're only making me more depressed."
  "No one ever listens."
  "I ache, therefore I am."
]

lifeQuotes = [
  "Life! Don't talk to me about life",
  "Life, loathe it or ignore it, you can't like it",
  "Life's bad enough as it is without wanting to invent any more of it",
  "Funny, how just when you think life can't possibly get any worse it suddenly does"
]

module.exports = (robot) ->
  robot.hear /^marvin!*\?*\.*$/i, (msg) ->
    msg.send msg.random helloQuotes
  robot.hear /\bhelp\b/i, (msg) ->
    msg.send msg.random helpQuotes
  robot.respond /(\w+) love (.*?)\s*(Marvin)?(\.)?$/i, (res) ->
    love = res.match[2]
    if love
      res.reply "I hate " + love + "."
  robot.hear /(any\s*)idea(s)(\?)?/, (msg) ->
    msg.send msg.random ideasQuotes
  robot.hear /\blife\b/i, (msg) ->
    msg.send msg.random lifeQuotes