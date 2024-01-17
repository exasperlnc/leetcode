require 'tree_node'

def is_valid_bst(root)
  def valid(node, left=-(Float::INFINITY), right=(Float::INFINITY))
    return true if !node
    if !(left < node.val) || !(node.val < right)
      return false
    end
    return (valid(node.left, left, node.val) &&
           valid(node.right, node.val, right))
  end
  valid(root)
end