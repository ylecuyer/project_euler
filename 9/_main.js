// Generated by CoffeeScript 1.6.3
(function() {
  var a, b, c, max, p, res, _i, _j, _k;

  res = 0;

  max = 0;

  for (c = _i = 2; _i <= 999; c = ++_i) {
    for (b = _j = 1; _j <= 998; b = ++_j) {
      if (b >= c) {
        break;
      }
      for (a = _k = 0; _k <= 997; a = ++_k) {
        if (a >= b) {
          break;
        }
        if ((a + b + c) !== 1000) {
          continue;
        }
        p = a * b * c;
        if ((Math.pow(a, 2) + Math.pow(b, 2) === Math.pow(c, 2)) && p > max) {
          max = p;
        }
      }
    }
  }

  res = max;

  console.log(res);

}).call(this);
