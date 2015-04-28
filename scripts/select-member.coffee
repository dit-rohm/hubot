# Description:
#   メンバーの１人をランダムに出力
#
# Commands:
#   hubot choose
#
# Author:
#  chikam

module.exports = (robot) ->
	robot.respond /choose/i, (msg) ->
		member = msg.random ["ちい", "りょうぽん", "けいちゃん", "いいのっく", "たむりん", "ともくん", "うっちー", "くにちゃん", "はやP"]
		msg.send "#{member}を選んだよ！"

