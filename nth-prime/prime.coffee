class Prime

  @nth: (n) ->
    primes = []
    test = 1
    while(primes.length < n)
      primes.push(test) if prime(test)
      test++
    primes.pop()

  prime = (num) ->
    if isNaN(num) || !isFinite(num) || num%1 || num < 2
      false
    else if num == 2
      true
    else
      for i in [2..Math.sqrt(num)]
        return false if num%i == 0
      true


module.exports = Prime
