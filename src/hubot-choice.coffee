# Description:
#   Choice one from items.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot choice item1 item2 item3
#
# Author:
#   Drunkar <drunkars.p@gmail.com>
#

module.exports = (robot) ->
  robot.respond /choice (.+)/i, (msg) ->
    items = msg.match[1].split(/\s+/)
    item = msg.random items
    msg.send "厳正な抽選の結果、「#{item}」に決まりました"