res = 0

dmax = 20

d = (0 for i in [1..dmax])

s = (0 for i in [1..dmax])

factors = (x) ->
   fact = [1]
   d = 2
   while x > 1
        if (x%d == 0)
             fact.push d
             x /= d
        else
             d++
   fact

for h in [1..dmax]
     stmp = (0 for i in [1..dmax])
     f = factors h
     stmp[j-1]++ for j in f     
     ((s[j-1] = stmp[j-1]) if stmp[j-1] > s[j-1]) for j in [1..dmax]     

res = 1

res *= Math.pow(j,s[j-1]) for j in [1..dmax]

console.log res
