puts (1..1000-1).find_all { |x| (x%3 == 0 or x%5 == 0) }.inject { |sum, n| sum+n}
