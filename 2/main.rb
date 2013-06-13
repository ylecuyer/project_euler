fib = [1, 1]

a = 1
b = 1

begin
	a,b = b, a+b

	fib << b
end while b <= 4000000

puts fib.find_all { |x| x.even? }.inject { |sum, n| sum+n }

