require './lib/tree_node'

def lowest_common_ancestor(root, p, q)
  # save the location of the lowest ancestor so far, start w/ the root
  lowest = root

  # if p and q aren't both less than or both greater than, return root 
  if p.val < lowest.val && q.val < lowest.val
    lowest = lowest.left
    lowest_common_ancestor(lowest, p, q)
  end

  if p.val > lowest.val && q.val > lowest.val
    lowest = lowest.right
    lowest_common_ancestor(lowest, p, q)
  end
  lowest.val
  # if they match, go down that tree and repeat with the root 
end