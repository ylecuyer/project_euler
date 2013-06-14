res = 0

max_length = 0
i_max = 0

s = (n) ->
  l = 1
  while n != 1
       if n%2 == 0
          n = n/2
       else       
          n = 3*n + 1
       l++
  l

for i in [1..1000000]
  l = s(i)
  if l > max_length
     max_length = l
     i_max = i

res = i_max

console.log res