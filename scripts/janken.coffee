# Description:
#   ボットとジャンケンをした結果を出力します
#
# Commands:
#   hubot janken <card> - card は rock(グー)/paper(パー)/scissor(チョキ)
#
# Auther:
#   Stupiddog

# 0:rock 1:paper 2:scissor, key vs value として key が勝利する条件
rules = { 0:2, 1:0, 2:1 }
cards = [ "rock", "paper", "scissor" ]

# 勝敗判定
judge = (user, comp) ->
	if user == comp
		"DRAW"
	else if rules[user] == comp
		"YOU WIN!!"
	else
		"YOU LOSE!!"

# ジャンケン
janken = (user_card) ->
	user = cards.indexOf(user_card)
	if user == -1
		"#{user_card} ???"
	else
		comp = Math.floor(Math.random() * 3)
		"#{judge(user, comp)} bot:#{cards[comp]} vs you:#{user_card}"

module.exports = (robot) ->
	robot.respond /janken (.*)$/i, (msg) ->
		user_card = msg.match[1].trim().toLowerCase()
		msg.send janken(user_card)

# Examples:
# Hubot> hubot janken rock
# Hubot> DRAW hubot:rock vs user:rock
# Hubot> hubot janken paper
# Hubot> YOU WIN!! hubot:rock vs user:paper
