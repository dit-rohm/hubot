# Description:
#   DIT正式名称の出力
#
# Commands:
#   hubot dit
#
# Author:
#   chikam

module.exports = (robot) ->
	robot.respond /dit/i, (msg) ->
		msg.send "Doshisha Institute of Technology"

