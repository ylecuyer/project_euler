// Generated by CoffeeScript 1.6.3
(function() {
  var i, j, max, res, tri, _i, _j, _ref, _ref1;

  res = 0;

  max = function(p, q) {
    if (p > q) {
      return p;
    } else {
      return q;
    }
  };

  tri = [];

  tri[0] = [75];

  tri[1] = [95, 64];

  tri[2] = [17, 47, 82];

  tri[3] = [18, 35, 87, 10];

  tri[4] = [20, 4, 82, 47, 65];

  tri[5] = [19, 1, 23, 75, 3, 34];

  tri[6] = [88, 2, 77, 73, 7, 63, 67];

  tri[7] = [99, 65, 4, 28, 6, 16, 70, 92];

  tri[8] = [41, 41, 26, 56, 83, 40, 80, 70, 33];

  tri[9] = [41, 48, 72, 33, 47, 32, 37, 16, 94, 29];

  tri[10] = [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14];

  tri[11] = [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57];

  tri[12] = [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48];

  tri[13] = [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31];

  tri[14] = [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23];

  for (i = _i = _ref = tri.length - 2; _ref <= 0 ? _i <= 0 : _i >= 0; i = _ref <= 0 ? ++_i : --_i) {
    for (j = _j = 0, _ref1 = tri[i].length - 1; 0 <= _ref1 ? _j <= _ref1 : _j >= _ref1; j = 0 <= _ref1 ? ++_j : --_j) {
      tri[i][j] += max(tri[i + 1][j], tri[i + 1][j + 1]);
    }
  }

  res = tri[0][0];

  console.log(res);

}).call(this);
