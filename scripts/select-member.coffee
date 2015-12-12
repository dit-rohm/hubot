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
		robot.http("https://apps.dit-rohm.com/api/victim").get() (err, res, body) ->
			member = JSON.parse(body)['username']
			msg.send "#{member}を選んだよ！"
