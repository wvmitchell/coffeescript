class Luhn

  constructor: (raw) ->
    @checkDigit = raw%10
    @addends = addends(raw)
    @checksum = convert(raw)
    @valid = @checksum % 10 == 0

  @create: (num) ->

  convert = (raw) ->
    convertedDigits = addends(raw)
    sum(convertedDigits)

  addends = (raw) ->
    newDigts = []
    for digit, i in raw.toString().split('').reverse()
      if i%2
        newDigts.push(encrypt(digit))
      else
        newDigts.push(parseInt(digit))
    newDigts.reverse()

  encrypt = (digit) ->
    doubled = parseInt(digit) * 2
    if doubled > 9 then (doubled - 9) else doubled

  sum = (digits) ->
    result = 0
    for digit in digits
      result += digit
    result



module.exports = Luhn
