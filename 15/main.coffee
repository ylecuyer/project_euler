res = 0

fact = (n) ->
	return 1 if n == 1
	return n*fact(n-1)

res = fact(40)/(fact(20)*fact(20))

console.log res
