# If you're gonna swear, just remeber Marvin's metal hand will be upon you

module.exports = (robot) ->
  robot.hear /fuck|shit|cunt/i, (msg) ->
    msg.emote "/me slaps #{msg.message.user.name} across the face with his large, depressingly metal hand."