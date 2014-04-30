class Hexadecimal

  constructor: (raw) ->
    @hex = clean(raw)

  toDecimal: ->
    result = 0
    for digit, i in digits(@hex)
      result += conversions[digit] * Math.pow(16, i)
    result

  clean = (raw) ->
    if /[g-zG-Z]/.test(raw) then '0' else raw

  digits = (hex) ->
    hex.split('').reverse()

  conversions =
    "0": 0
    "1": 1
    "2": 2
    "3": 3
    "4": 4
    "5": 5
    "6": 6
    "7": 7
    "8": 8
    "9": 9
    "a": 10
    "b": 11
    "c": 12
    "d": 13
    "e": 14
    "f": 15


module.exports = Hexadecimal
