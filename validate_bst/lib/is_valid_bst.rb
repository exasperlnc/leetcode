require 'tree_node'

def is_valid_bst(root)
  check_if_valid?(root)
end

def check_if_valid?(node, min: -Float::INFINITY, max: Float::INFINITY)
  return true if node.nil? # base case: return if we go the right or left of a leaf

  # tree is BST if current node val is left node, its value need to be less than all the above node, which set a max boundary by the above node val
  # if current node is a right node, its value need to be more than the above node, which set a min boundary by the above node val
  return false unless min < node.val && node.val < max
  # we need to check both sub right and left tree
  check_if_valid?(node.left, min: min, max: node.val) && check_if_valid?(node.right, min: node.val, max: max)
end