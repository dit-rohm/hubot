# Description
#   いくつかの選択肢の中から１つをランダムに選んでくれます
#
# Commands:
#   <item1>、<item2>、<item3>から選んで - choose at random
#
# Author:
#   chikam

module.exports = (robot) ->
  robot.hear /(.*)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.send "#{item}を選んだよ！"
