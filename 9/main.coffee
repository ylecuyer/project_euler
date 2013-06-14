res = 0

max = 0

for c in [2..999]
	for b in [1..998]
		break if b >= c
		for a in [0..997]
			break if a >= b
			continue if (a + b + c) != 1000
			p = a*b*c
			max = p if (Math.pow(a,2) + Math.pow(b,2) == Math.pow(c,2)) and p > max

res = max

console.log res
