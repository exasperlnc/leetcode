def is_subtree?(p, q)
  # compare the trees 
  # if p  == q, return true
  # els is_subtree?(p.left, q)
  # els is_subtree?(p.right, q)
  # else false 
end

def same_tree?(p, q)
  if p.nil? && q.nil?
    return true
  elsif p && q
    p.val == q.val && 
    same_tree?(p.left, q.left) &&
    same_tree?(p.right, q.right)
  else
    false
  end
end