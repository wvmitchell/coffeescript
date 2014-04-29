class Binary

  constructor: (@binary) ->

  toDecimal: ->
    result = 0
    for digit, i in @binary.split('').reverse()
      result += parseInt(digit) * Math.pow(2, i)
    result

module.exports = Binary
