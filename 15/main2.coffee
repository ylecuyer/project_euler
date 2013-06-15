res = 0

class Node
      constructor: (@down_count, @right_count) ->
            @down = null
            @right = null
      
      setDown: (@down)
      setRight: (@right)
      
      getDownCount: ->
             return @down_count
      getRightCount: ->
             return @right_count

N = 20

tree = new Node 0,0

populateTree = (root) ->
      return if root is undefined
      d = root.getDownCount()
      r = root.getRightCount()
      root.d = new Node d+1, r if d < N
      root.r = new Node d, r+1 if r < N
      populateTree root.d
      populateTree root.r

showTree = (root, deep) ->
     return if root is undefined
     str = ""
     str += "-" for i in [1..deep]
     str += "> ("+root.getDownCount()+", "+root.getRightCount()+")"
     console.log str
     showTree root.d, deep+1
     showTree root.r, deep+1

countLeaves = (root) ->
     return 0 if root is undefined
     return 1 if root.d is undefined and root.r is undefined
     d = countLeaves root.d
     r = countLeaves root.r
     return d+r
     

populateTree tree

## showTree tree, 1

res = countLeaves tree

console.log res
