res = 0

fib = [1, 1]

a = 1
b = 1

while b <= 4000000
	[a,b] = [b, a+b]
	fib.push b

sum = fib.filter((x) -> x%2 == 0).reduce (x,y) -> x+y

res = sum

console.log res
