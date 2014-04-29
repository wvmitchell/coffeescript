class Bob

  constructor: (@cons="hello") ->

  hey: (statement) ->
    if silence(statement)
      "Fine. Be that way!"
    else if shouting(statement)
      "Woah, chill out!"
    else if question(statement)
      "Sure."
    else
      "Whatever."

  shouting = (statement) ->
    statement == statement.toUpperCase()

  question = (statement) ->
    statement[statement.length-1] == "?"

  silence = (statement) =>
    "" == statement.trim()

module.exports = Bob
