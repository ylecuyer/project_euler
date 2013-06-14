res = 0

isPrime = (n) ->
     if n == 2 or n == 3
          return true
     for i in [2..~~Math.sqrt(n)]
           if n%i == 0
                return false
     true

i = 1
j = 0;

while j != 10001
    i++
    j++ if isPrime i

res = i

console.log res
