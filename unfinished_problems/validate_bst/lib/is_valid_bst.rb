require 'tree_node'

def is_valid_bst(root)
  # check if left is less
  left_checker(root) if root.left
  # check if right is more
  right_checker(root) if root.right

  return true
end

def left_checker(root)
  return false if root.left && root.left.val >= root.val
   # check if left is less
   left_checker(root.left) if root.left
   # check if right is more
   right_checker(root.right) if root.right
end

def right_checker(root)
  return false if root.right && root.right.val <= root.val
   # check if left is less
   left_checker(root.left) if root.left
   # check if right is more
   right_checker(root.right) if root.right
end