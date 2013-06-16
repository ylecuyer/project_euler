res = 0

N = 1001

n = 1
sum = 1

for i in [2..(N-1)/2+1]
     for j in [1..4]
          n += 1 + 2*(i-2) + 1
          console.log i,n
          sum += n

res = sum

console.log res
