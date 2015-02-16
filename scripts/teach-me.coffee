# Description:
#   指定した単語の概要を教えてくれます。
#
# Commands:
#   hubot teach me <word> - <word>の概要をwikipediaから表示
#
# Auther:
#   nakanishy

module.exports = (robot) ->
  robot.respond /teach me (.*)$/i, (msg) ->
    word = msg.match[1].trim()
    msg.http('http://ja.wikipedia.org/w/api.php')
      .query({
        action: 'query'
        format: 'json'
        titles: word
        exchars: 130
        explaintext: 1
        redirects: 1
        prop: 'extracts'
      })
      .get() (err, res, body) ->
        info = JSON.parse(body)
        if info.query.pages['-1']?
          msg.send '"' + info.query.normalized[0].from + '"' + ' は見つからなかったよ！'
          return
        Object.keys(info.query.pages).forEach (key) ->
          msg.send info.query.pages[key].extract + '\n http://ja.wikipedia.org/wiki/' + info.query.pages[key].title

