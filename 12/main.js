// Generated by CoffeeScript 1.6.3
(function() {
  var divisors, i, res, tri,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  res = 0;

  tri = function(n) {
    return n * (1 + n) / 2;
  };

  divisors = function(n) {
    var d, divs, _i, _ref, _ref1;
    if (n === 1) {
      return [1];
    }
    divs = [];
    for (d = _i = 1, _ref = ~~(Math.sqrt(n)); 1 <= _ref ? _i <= _ref : _i >= _ref; d = 1 <= _ref ? ++_i : --_i) {
      if (n % d === 0) {
        if (__indexOf.call(divs, d) < 0) {
          divs.push(d);
        }
        if (_ref1 = n / d, __indexOf.call(divs, _ref1) < 0) {
          divs.push(n / d);
        }
      }
    }
    return divs;
  };

  i = 1;

  while (divisors(tri(i)).length < 500) {
    i++;
  }

  res = tri(i);

  console.log(res);

}).call(this);
