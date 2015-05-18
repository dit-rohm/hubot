# Description:
#   現在の時刻を美人時計、美男時計で教えてくれます
#
# Commands:
#   bijin - 時刻を美人時計で教えてくれます
#   binan - 時刻を美男時計で教えてくれます
#
# Auther:
#   chikam

require('date-utils');

module.exports = (robot) ->
  robot.hear /bijin/i, (msg) ->
    dt = new Date();
    formatted = dt.toFormat("HH24MI");
    prefectures = ['chiba', 'fukuoka', 'kanazawa', 'aomori', 'iwate', 'niigata', 'shizuoka', 'ibaraki', 'nagoya', 'hokkaido', 'kanagawa', 'tokyo', 'saitama', 'okinawa', 'nara', 'saga', 'hiroshima', 'miyazaki', 'akita', 'osaka', 'nagasaki', 'nagano', 'kyoto', 'fukui', 'gunma', 'yamanashi', 'yamaguchi', 'kumamoto', 'okayama', 'tottori', 'tochigi', 'kagawa', 'kobe', 'sendai']
    num = Math.floor(Math.random() * prefectures.length + 1)
    img_url = 'http://www.bijint.com/assets/pict/jp/pc/TIME.jpg'.replace('TIME', formatted)
    img_url = img_url.replace('jp', prefectures[num])
    msg.send(img_url)

  robot.hear /binan/i, (msg) ->
    dt = new Date();
    formatted = dt.toFormat("HH24MI");
    img_url = 'http://www.bijint.com/assets/pict/binan/pc/TIME.jpg'.replace('TIME', formatted)
    msg.send(img_url)

