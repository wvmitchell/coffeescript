class Binary

  constructor: (raw) ->
    @binary = clean(raw)

  toDecimal: ->
    result = 0
    for digit, i in @binary.split('').reverse()
      result += parseInt(digit) * Math.pow(2, i)
    result

  clean = (raw) ->
    if /[a-zA-Z2-9]/.test(raw) then '0' else raw

module.exports = Binary
