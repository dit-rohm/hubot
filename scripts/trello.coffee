# Description:
#   Trelloのボードにカードを追加します
#
# Commands:
#   hubot <ボード名> <カード名> - <カード名>を<ボード名>のToDoリストに追加します
#
# Auther:
#   chikam

module.exports = (robot) ->
  Trello = require("node-trello")

  addCard = (msg, boardName, boardNum) ->
    title = "#{msg.match[1]}"
    boards = [process.env.HUBOT_TRELLO_LIST_1, process.env.HUBOT_TRELLO_LIST_2, process.env.HUBOT_TRELLO_LIST_3, process.env.HUBOT_TRELLO_LIST_4, process.env.HUBOT_TRELLO_LIST_5, process.env.HUBOT_TRELLO_LIST_6]
    t = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    t.post "/1/cards", {name: title, idList: boards[boardNum]}, (err, data) ->
      if err
        msg.send "ERROR"
        return
      msg.send "「#{title}」 を#{boardName}のToDoリストに追加したよ！"

  robot.respond /クローバー祭 (.*)/i, (msg) ->
    addCard(msg, "クローバー祭", 0)

  robot.respond /予約管理システム (.*)/i, (msg) ->
    addCard(msg, "予約管理システム", 1)

  robot.respond /冬期ハッカソン (.*)/i, (msg) ->
    addCard(msg, "冬期ハッカソン", 2)

  robot.respond /勉強会 (.*)/i, (msg) ->
    addCard(msg, "勉強会", 3)

  robot.respond /夏期ハッカソン (.*)/i, (msg) ->
    addCard(msg, "夏期ハッカソン", 4)

  robot.respond /教材ビューア (.*)/i, (msg) ->
    addCard(msg, "教材ビューア", 5)

