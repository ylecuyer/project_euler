res = 0

isPalindrome = (x) ->
	num = x
	res = 0
	while num > 0
		res = res*10 + num%10
		num = ~~(num/10)
	(x - res) == 0
	

max = 0

for a in [1..999]
	for b in [1..999]
		c = a*b
		max = c if c > max && isPalindrome c

res = max

console.log res 
