# Description:
#   現在の時刻を美人時計で教えてくれます
#
# Commands:
#   tokei - 時刻を美人時計で教えてくれます
#
# Auther:
#   chikam

require('date-utils');

module.exports = (robot) ->
  robot.hear /tokei/i, (msg) ->
    dt = new Date();
    formatted = dt.toFormat("HH24MI");
    img_url = 'http://www.bijint.com/jp/tokei_images/TIME.jpg'.replace('TIME', formatted)
    msg.send(img_url)
