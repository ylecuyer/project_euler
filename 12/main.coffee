res = 0

tri = (n) -> 
     n*(1+n)/2

divisors = (n) ->
       return [1] if n == 1 
       divs = []
       for d in [1..~~(Math.sqrt(n))]
          if n%d == 0
               divs.push d if d not in divs
               divs.push n/d if n/d not in divs
       divs

i = 1

i++ while divisors(tri(i)).length < 500

res = tri i

console.log res
