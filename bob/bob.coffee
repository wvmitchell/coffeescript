class Bob

  hey: (statement) ->
    if shouting(statement)
      "Woah, chill out!"
    else if question(statement)
      "Sure."
    else
      "Whatever."

  shouting = (statement) ->
    statement == statement.toUpperCase()

  question = (statement) ->
    statement[statement.length-1] == "?"

module.exports = Bob
