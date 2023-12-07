def is_subtree?(p, q)
  return true if p.nil? && q.nil?
  return true if q.nil?
  return false if p.nil?

  if same_tree?(p, q)
    return true
  else
    is_subtree?(p.left, q) || 
    is_subtree?(p.right, q)
  end
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