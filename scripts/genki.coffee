# Description:
#  励ましてくれます
#
# Commands:
#   疲,凹,弱など - 励ましてくれます
#
# Auther:
#   chikam

genki = '元気出して！:funassy:'

module.exports = (robot) ->
    robot.hear /疲れ/, (msg) ->
        msg.send 'お疲れさま！' + genki
    robot.hear /凹/, (msg) ->
        msg.send '凹んでるの？' + genki
    robot.hear /心折/, (msg) ->
        msg.send '心折れてるの？' + genki
    robot.hear /(?:寂|淋)し/, (msg) ->
        msg.send 'さびしいの？' + genki
    robot.hear /弱っ/, (msg) ->
        msg.send '弱ってるの？' + genki
    robot.hear /つらい/, (msg) ->
        msg.send 'つらくても、' + genki
    robot.hear /死にたい/, (msg) ->
        msg.send '死なないで、' + genki
    robot.hear /(?:。。。|orz)/, (msg) ->
        msg.send genki

