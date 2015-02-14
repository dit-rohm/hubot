# Description:
#   メンバーの１人をランダムに出力
#
# Commands:
#   hubot 選んで
#
# Author:
#  chikam 

module.exports = (robot) ->
	robot.respond /選んで/i, (msg) ->
		member = msg.random ["ちい", "りょうぽん", "けいちゃん", "いいのっく", "たむりん"]
		msg.send "#{member}を選んだよ！" 
	
