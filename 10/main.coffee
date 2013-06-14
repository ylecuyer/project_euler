res = 0

M = 2000000

p = (i for i in [0..M])

p[0] = p[1] = 0

i = 2

while Math.pow(p[i], 2) <= M
     j = 2
     while p[i]*j <= M
         p[p[i]*j] = 0
         j++
     i++
     i++ while p[i] == 0

res = p.reduce (x,y) -> x + y

console.log res
