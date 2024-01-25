def kth_smallest(root, k)
  # store elements in a stack 
  stack = []
  # store how many elements we have visited, first visit should be 1 (k is 1 indexed) 
  visited = 0
  # store the current node 
  cur = root

  # while curr or stack
  while cur || stack
    while cur 
      #stack.push(cur)
      stack << cur
      #cur = cur.left
      cur = cur.left
    end
    cur = stack.pop
    visited += 1
    if visited == k
      return cur.val
    end
    cur = cur.right
  end
end