res = 0

sum = [1..999].filter((x) -> (x%3 == 0 or x%5 == 0)).reduce (x,y) -> x + y

res = sum

console.log(res)
