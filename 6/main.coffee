res = 0

res = Math.pow(([1..100].reduce (x,y) -> x+y), 2) - [1..100].map( (x) -> Math.pow(x,2)).reduce (x,y) -> x+y

console.log res
