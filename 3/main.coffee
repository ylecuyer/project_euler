res = 0

n = 600851475143
d = 1
div = []

while n != 1
	if n%d == 0
		div.push d
		n /= d
	d++


res = div[div.length - 1]

console.log res
