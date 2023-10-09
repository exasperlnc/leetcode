require 'tree_node'

def invert_tree(tree_node)
  return nil unless tree_node
  tree_node.left, tree_node.right = tree_node.right,tree_node.left
  
  invert_tree(tree_node.left)
  invert_tree(tree_node.right)
end