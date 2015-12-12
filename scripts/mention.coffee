# Description:
#  チーム名で@を飛ばすと個々にメンションしてくれる
#
# Commands:
#   @勉強会班
#   @ハッカソン班
#
# Auther:
#   chikam

module.exports = (robot) ->
  robot.hear /@勉強会班(.*)/i, (msg) ->
    msg.send "@ucchy: @tamrin: @chii: @ek: @tomokik.: @hyoga: @hayato: 呼んでる（´・ω・）ｽ"
  robot.hear /@ハッカソン班(.*)/i, (msg) ->
    msg.send "@ryoupon: @nakanishi: @shingo: @kiyomaru: @tomoyat1: @fumiyatomotoshi: 呼んでる（´・ω・）ｽ"
