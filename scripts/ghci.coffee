# Description:
#   Evaluate on GHCi
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   haskell <script> - Evaluate one line of Haskell
#   hs!              - Alias of `haskell`
#
# Author:
#   na_o_ys
 
module.exports = (robot) ->
  robot.hear /^(haskell|hs\!)(\s|\n)+([^\s\n][\s\S]*)/i, (msg)->
    script = msg.match[3].trim()
 
    msg.http("http://localhost:3000/eval")
      .query({expr: script})
      .get() (err, res, body) ->
        switch res.statusCode
          when 200
            msg.send "\`\`\`\n#{body.trim()}\n\`\`\`"
