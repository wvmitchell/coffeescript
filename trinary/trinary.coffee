class Trinary

  constructor: (@trinary) ->

  toDecimal: ->
    result = convert(@trinary)
    if isNaN(result) then 0 else result

  convert = (stringNum) ->
    result = 0
    for digit, index in digits(stringNum)
      result += digit * Math.pow(3, index)
    result

  digits = (stringNum) ->
    stringNum.split("").reverse()

module.exports = Trinary
