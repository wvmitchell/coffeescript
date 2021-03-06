// Generated by CoffeeScript 1.7.1
(function() {
  var Prime;

  Prime = (function() {
    var prime;

    function Prime() {}

    Prime.nth = function(n) {
      var primes, test;
      primes = [];
      test = 1;
      while (primes.length < n) {
        if (prime(test)) {
          primes.push(test);
        }
        test++;
      }
      return primes.pop();
    };

    prime = function(num) {
      var i, _i, _ref;
      if (isNaN(num) || !isFinite(num) || num % 1 || num < 2) {
        return false;
      } else if (num === 2) {
        return true;
      } else {
        for (i = _i = 2, _ref = Math.sqrt(num); 2 <= _ref ? _i <= _ref : _i >= _ref; i = 2 <= _ref ? ++_i : --_i) {
          if (num % i === 0) {
            return false;
          }
        }
        return true;
      }
    };

    return Prime;

  })();

  module.exports = Prime;

}).call(this);
